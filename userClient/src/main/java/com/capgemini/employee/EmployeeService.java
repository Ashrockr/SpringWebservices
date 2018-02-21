package com.capgemini.employee;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;

@Service
public class EmployeeService {
	@Autowired
	DiscoveryClient discoveryClient;
	@Autowired
	RestTemplate restTemplate;
	@Autowired
	Employee employee;
	
	@HystrixCommand(fallbackMethod="addEmployeeFallBack")
	public int addEmployee(Employee employee){
		String url=getInstance()+"/producer"+"/add";
		return restTemplate.postForObject(url, employee, Integer.class);		
	}
	
	@SuppressWarnings("unchecked")
	@HystrixCommand(fallbackMethod="viewAllFallBack")
	public List<Employee> viewAll(){
		String url=getInstance()+"/user"+"/view";
		return restTemplate.getForObject(url,List.class);
	}
	
	@HystrixCommand(fallbackMethod="deleteFallBack")
	public void deleteEmployee(int id){
		String url=getInstance()+"/producer"+"/delete";
		employee.setId(id);
		id = restTemplate.postForObject(url, employee, Integer.class);	
	}
	public String getInstance(){
		List<ServiceInstance> instances=discoveryClient.getInstances("ZUUL-GATEWAY");	
		ServiceInstance serviceInstance=instances.get(0);
		String baseUrl=serviceInstance.getUri().toString();
		return baseUrl;
	}
	public int addEmployeeFallBack(Employee employee){
		System.out.println("FallBack Method Called!!!!!!!!!");
		return 0;		
	}
	public List<Employee> viewAllFallBack(){		
		System.out.println("View All FallBack Method Called!!!!!!!!!");
		List<Employee> list= new ArrayList<Employee>();
		list.add(new Employee(0, "Ashish", 10000));
		return list;
	}
	
	public void deleteFallBack(int id){
		System.out.println("Delete FallBack!!!!");
	}
}
