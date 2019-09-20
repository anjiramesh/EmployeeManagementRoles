package com.employee.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.employee.model.Employee;
import com.employee.service.EmployeeService;

@Controller
@RequestMapping("/employees")
public class EmployeeController {
	@Autowired
	private EmployeeService employeeService;

	@RequestMapping("/enter")
	public String show(@ModelAttribute Employee employee, ModelMap map) {
		map.addAttribute("employee", new Employee());

		return "save";

	}

	@RequestMapping("/save")
	public String saveEmployee(@ModelAttribute Employee employee, ModelMap map) {
		employeeService.createEmployee(employee);
		List<Employee> list = employeeService.getEmployeesList();
		map.addAttribute("list", list);
		map.addAttribute("employee", new Employee());
		return "save";
	}

	@RequestMapping("/liste")
	public String getEmployeesList(ModelMap map, @RequestParam(defaultValue = "0",value="salary") String salary) {
		Double freeText = Double.parseDouble(salary);
		map.addAttribute("list", employeeService.findBySalaryLessThan(freeText));
		return "list";
	}

	@RequestMapping("/list")
	public String getEmployeesData(ModelMap map, @RequestParam(defaultValue = "0",value="salary") String salary) {
		Double freeText = Double.parseDouble(salary);
		map.addAttribute("list", employeeService.findBySalaryGreaterThan(freeText));
		return "ListData";
	}
}
