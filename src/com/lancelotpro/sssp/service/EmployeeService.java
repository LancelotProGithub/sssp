package com.lancelotpro.sssp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lancelotpro.sssp.entity.Employee;
import com.lancelotpro.sssp.repository.EmployRepository;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployRepository employRepository;
	
	/**
	 * ����ID��ȡ��Ա��
	 * @param id
	 * @return
	 */
	@Transactional(readOnly=true)
	public Employee getEmployee(int id) {
		return employRepository.findOne(id);
	}
	
	/**
	 * ��ѯ���е�Ա��
	 * @return
	 */
	@Transactional(readOnly=true)
	public List<Employee> getAllEmployees(){
		return employRepository.findAll();
	}
	
}
