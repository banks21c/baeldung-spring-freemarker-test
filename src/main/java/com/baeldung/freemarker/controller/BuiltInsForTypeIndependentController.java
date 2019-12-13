package com.baeldung.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuiltInsForTypeIndependentController {
/*
* https://freemarker.apache.org/docs/ref_builtins_type_independent.html
*/

	@RequestMapping(value = "/ref_builtins_type_independent/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "ref_builtins_type_independent/index";
	}

	@RequestMapping(value = "/ref_builtins_type_independent", method = RequestMethod.GET)
	public String ref_builtins_type_independent(Model model) {
		return "ref_builtins_type_independent/ref_builtins_type_independent";
	}

}
