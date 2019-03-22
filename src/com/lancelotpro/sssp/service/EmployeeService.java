package com.lancelotpro.sssp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lancelotpro.sssp.entity.Employee;
import com.lancelotpro.sssp.repository.EmployRepository;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployRepository employRepository;
	
	
	
	/**
	 * 查询所有的员工
	 * @return
	 */
	public List<Employee> getAllEmployees(){
		return employRepository.findAll();
	}
	
}
