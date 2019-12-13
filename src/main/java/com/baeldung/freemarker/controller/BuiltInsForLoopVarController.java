package com.baeldung.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuiltInsForLoopVarController {
/*
* https://freemarker.apache.org/docs/ref_builtins_loop_var.html
*/

	@RequestMapping(value = "/ref_builtins_loop_var/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "ref_builtins_loop_var/index";
	}

	@RequestMapping(value = "/ref_builtins_loop_var", method = RequestMethod.GET)
	public String ref_builtins_loop_var(Model model) {
		return "ref_builtins_loop_var/ref_builtins_loop_var";
	}

}
