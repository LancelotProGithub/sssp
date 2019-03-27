package com.lancelotpro.sssp.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lancelotpro.sssp.entity.Employee;
import com.lancelotpro.sssp.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	/**
	 * �г����е�Ա��
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/emplist",method=RequestMethod.GET)
	public String empList(Map<String, Object> map) {
		
		List<Employee> employees = employeeService.getAllEmployees();
		//����
		map.put("emps", employees);
		return "employee/employeeList";
	}
	
	/**
	 * Ա�����Ա༭
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/emp/{id}",method=RequestMethod.GET)
	public String empEdit(@PathVariable("id")Integer id,Map<String, Object> map) {
		Employee employee = employeeService.getEmployee(id);
		if(employee != null) {
			map.put("emp", employee);
		}
		return "employee/employeeEdit";
	}
	
}
