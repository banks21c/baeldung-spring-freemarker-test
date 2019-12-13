package com.baeldung.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuiltInsForExpertController {
/*
* https://freemarker.apache.org/docs/ref_builtins_expert.html
*/

	@RequestMapping(value = "/ref_builtins_expert/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "ref_builtins_expert/index";
	}

	@RequestMapping(value = "/ref_builtins_expert", method = RequestMethod.GET)
	public String ref_builtins_expert(Model model) {
		return "ref_builtins_expert/ref_builtins_expert";
	}

}
