package com.baeldung.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuiltInsForNumbersController {
	/*
	 * https://freemarker.apache.org/docs/ref_builtins_string.html
	 */

	@RequestMapping(value = "/ref_builtins_numbers/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "ref_builtins_numbers/index";
	}

	@RequestMapping(value = "/ref_builtins_numbers/ref_builtins_numbers", method = RequestMethod.GET)
	public String ref_builtins_numbers(Model model) {
		model.addAttribute("message", "this is ref_builtins_numbers test...");
		return "ref_builtins_numbers/ref_builtins_numbers";
	}


}
