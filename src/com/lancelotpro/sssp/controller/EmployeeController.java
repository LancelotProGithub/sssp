package com.lancelotpro.sssp.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lancelotpro.sssp.entity.Employee;
import com.lancelotpro.sssp.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	
	@RequestMapping(value="/emplist",method=RequestMethod.GET)
	public String empList(Map<String, Object> map) {
		
		List<Employee> employees = employeeService.getAllEmployees();
		//¥Ê»Î
		map.put("emps", employees);
		return "employee/employeeList";
	}
}
