package com.employee.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.employee.model.Employee;
import com.employee.repository.EmployeeRepository;
import com.employee.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeRepository employeeRepository;

	@Override
	@Transactional
	public void createEmployee(Employee employee) {
		employeeRepository.save(employee);
	}

	@Override
	public List<Employee> getEmployeesList() {
		
		return employeeRepository.findAll();
	}

	@SuppressWarnings("unused")
	@Override
	@Transactional
	public List<Employee> findBySalaryLessThan(Double salary) {
		List<Employee> employee = employeeRepository.findBySalaryLessThan(salary);
		for (Employee employee2 : employee) {
			System.out.println(employee);
		}
		return employee;
	}

	@SuppressWarnings("unused")
	@Override
	@Transactional
	public List<Employee> findBySalaryGreaterThan(Double salary) {
		 List<Employee> employee =employeeRepository.findBySalaryGreaterThan(salary);
		 
		 for (Employee employee1 : employee) {
			 System.out.println(employee1);
			
		}
		return employee;
	}

}
