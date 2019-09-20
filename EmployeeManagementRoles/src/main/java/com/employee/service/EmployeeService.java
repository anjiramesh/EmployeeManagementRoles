package com.employee.service;

import java.util.List;

import com.employee.model.Employee;

public interface EmployeeService {
	
void createEmployee(Employee employee);
public List<Employee> getEmployeesList();
public List<Employee> findBySalaryLessThan(Double salary);
public List<Employee> findBySalaryGreaterThan(Double salary);
}
