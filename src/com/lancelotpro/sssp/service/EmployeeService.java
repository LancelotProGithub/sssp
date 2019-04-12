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
	 * 根据ID获取到员工
	 * @param id
	 * @return
	 */
	@Transactional(readOnly=true)
	public Employee getEmployee(int id) {
		return employRepository.findOne(id);
	}
	
	/**
	 * 查询所有的员工
	 * @return
	 */
	@Transactional(readOnly=true)
	public List<Employee> getAllEmployees(){
		return employRepository.findAll();
	}
	
	/**
	 *  保存 成功1 失败0
	 * @param employee
	 * @return
	 */
	public Integer saveEmployee(Employee employee) {
		if(employee != null) {
			//取出修改前的创建时间，不修改
			Employee bfemp = employRepository.findOne(employee.getId());
			employee.setCreateTime(bfemp.getCreateTime());
			employRepository.save(employee);
			return 1;
		}
		return 0;
	}
	
}
