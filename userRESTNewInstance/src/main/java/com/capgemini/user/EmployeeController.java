package com.capgemini.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeController {
	@Autowired
	private EmployeeRepositories employeeRepositories;
	
	@RequestMapping("/add")
	public int addEmployee(@RequestBody Employee employee){
		System.out.println(employee);
		employee=employeeRepositories.save(employee);
		return employee.getId()*100;		
	}
	
	@RequestMapping("/view")
	public List<Employee> viewAll(){
		List<Employee> empList =(List<Employee>) employeeRepositories.findAll();
		return empList;		
	}
	
	@RequestMapping("/delete")
	public int deleteEmployee(@RequestBody Employee employee){
		employeeRepositories.delete(employee);
		return employee.getId();		
	}
}
