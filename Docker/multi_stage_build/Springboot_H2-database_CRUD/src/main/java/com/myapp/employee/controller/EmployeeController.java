package com.myapp.employee.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.myapp.employee.entity.Employee;
import com.myapp.employee.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@GetMapping("/")
	public String indexPage() {
		return "index";
	}

	@GetMapping("/employees")
	public String lisStudents(Model model) {
		model.addAttribute("employees", employeeService.getAllEmployee());
		return "list_employee";
	}

	@GetMapping("/employees/new")
	public String addStudent(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "add_employee";
	}

	@PostMapping("/employees")
	public String saveStudent(@ModelAttribute("employee") Employee employee) {
		employeeService.addEmployee(employee);
		return "redirect:/employees";
	}

	@GetMapping("/employees/edit/{employeeId}")
	public String editStudentForm(@PathVariable int employeeId, Model model) {
		model.addAttribute("employee", employeeService.getEmployeeById(employeeId));
		return "edit_employee";
	}

	@PostMapping("/employees/{employeeId}")
	public String updateStudent(@PathVariable int employeeId, @ModelAttribute("employee") Employee employee,
			Model model) {
		Employee presentEmployee = employeeService.getEmployeeById(employeeId);

		presentEmployee.setEmployeeId(employeeId);
		presentEmployee.setFirstName(employee.getFirstName());
		presentEmployee.setLastName(employee.getLastName());
		presentEmployee.setEmail(employee.getEmail());
		presentEmployee.setSalary(employee.getSalary());

		employeeService.updateEmployee(presentEmployee);
		return "redirect:/employees";
	}

	@GetMapping("/employees/delete/{employeeId}")
	public String deleteStudent(@PathVariable int employeeId) {
		employeeService.deleteEmployee(employeeId);
		return "redirect:/employees";
	}
}
