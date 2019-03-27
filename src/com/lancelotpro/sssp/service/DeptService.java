package com.lancelotpro.sssp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lancelotpro.sssp.entity.Dept;
import com.lancelotpro.sssp.repository.DeptRepository;

@Service
public class DeptService {

	@Autowired
	private DeptRepository deptRepository;
	
	/**
	 * ��ȡ���еĲ���
	 * @return
	 */
	@Transactional(readOnly=true)
	public List<Dept> getAll(){
		return deptRepository.findAll();
	}
}
