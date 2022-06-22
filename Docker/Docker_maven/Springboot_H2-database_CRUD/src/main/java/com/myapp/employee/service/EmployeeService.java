package com.myapp.employee.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.myapp.employee.entity.Employee;

@Service
public interface EmployeeService {
	Employee addEmployee(Employee employee);

	List<Employee> getAllEmployee();
	
	Employee getEmployeeById(int studentId);

	Employee updateEmployee(Employee student);

	void deleteEmployee(int employeeId);
}
