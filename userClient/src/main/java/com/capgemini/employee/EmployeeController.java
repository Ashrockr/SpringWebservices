package com.capgemini.employee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@RefreshScope
@Controller
@SessionAttributes("message")
public class EmployeeController {
	List<Employee> empList;
	@Value("${message:USER}")
	String message;
	@Autowired
	EmployeeService employeeService;
	@RequestMapping("/")
	public String home(Model model){
		model.addAttribute("message", message);
		return "add";		
	}
	
	@RequestMapping("/add")
	public String addEmployee(@ModelAttribute Employee employee,Model model){
		
		int id = employeeService.addEmployee(employee);
		model.addAttribute("addMsg", "Employee has been added with id "+id);
		return "add";		
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/view")
	public String viewAll(Model model){		
		empList=  employeeService.viewAll();
		model.addAttribute("empList", empList);
		return "view";		
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/delete")
	public String deleteEmployee(@RequestParam int id,Model model){
		employeeService.deleteEmployee(id);
		empList= (List<Employee>) employeeService.viewAll();
		model.addAttribute("empList", empList);
		model.addAttribute("deleteMsg", "Employee has been deleted with id "+id);
		return "view";		
	}
	
	
}
