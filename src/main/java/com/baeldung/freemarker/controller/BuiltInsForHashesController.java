package com.baeldung.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuiltInsForHashesController {
/*
* https://freemarker.apache.org/docs/ref_builtins_hash.html
*/

	@RequestMapping(value = "/ref_builtins_hashes/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "ref_builtins_hashes/index";
	}

	@RequestMapping(value = "/ref_builtins_hashes", method = RequestMethod.GET)
	public String ref_builtins_hashes(Model model) {
		return "ref_builtins_hashes/ref_builtins_hashes";
	}

}
