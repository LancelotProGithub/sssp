package com.lancelotpro.sssp.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.lancelotpro.sssp.entity.Employee;
import com.lancelotpro.sssp.service.DeptService;
import com.lancelotpro.sssp.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private DeptService deptService;
	
	/**
	 * ��ÿ������֮ǰ��ִ��һ��modelattribute
	 * @param id
	 * @param map
	 */
	@ModelAttribute
	public void getEmployee(@RequestParam(value="id",required=false) Integer id,
			Map<String, Object> map){
		if(id != null){
			Employee employee = employeeService.getEmployee(id);
			employee.setDept(null);
			map.put("employee", employee);
		}
	}
	
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
			map.put("depts", deptService.getAll());
		}
		return "employee/employeeEdit";
	}
	
}
