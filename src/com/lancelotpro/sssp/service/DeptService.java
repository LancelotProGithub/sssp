package com.lancelotpro.sssp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lancelotpro.sssp.repository.DeptRepository;

@Service
public class DeptService {

	@Autowired
	private DeptRepository deptRepository;
}
