package com.springmvc.form;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springmvc.entity.Employee;

@Controller
public class FormController {

	@RequestMapping("/form")
	public String showform() {
		System.out.println("Show form handler");
		return "complex_form";
	}

	@RequestMapping(path = "/handle", method = RequestMethod.POST)
	public String formHandler(@ModelAttribute("employee") Employee employee, BindingResult result) {

		if (result.hasErrors()) {
			return "complex_form";
		}
		
		System.out.println(employee);
		return "success";
	}
}
