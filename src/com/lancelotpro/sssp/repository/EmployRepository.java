package com.lancelotpro.sssp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lancelotpro.sssp.entity.Employee;

public interface EmployRepository extends JpaRepository<Employee, Integer>{

}
