package com.baeldung.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MacroNestedReturnController {

	@RequestMapping(value = "/macro_01", method = RequestMethod.GET)
	public String macro_01(Model model) {
		return "macro_01";
	}

	@RequestMapping(value = "/macro_02", method = RequestMethod.GET)
	public String macro_02(Model model) {
		return "macro_02";
	}

	@RequestMapping(value = "/macro_03", method = RequestMethod.GET)
	public String macro_03(Model model) {
		return "macro_03";
	}

	@RequestMapping(value = "/macro_04", method = RequestMethod.GET)
	public String macro_04(Model model) {
		return "macro_04";
	}

	@RequestMapping(value = "/macro_05", method = RequestMethod.GET)
	public String macro_05(Model model) {
		return "macro_05";
	}

	@RequestMapping(value = "/macro_06", method = RequestMethod.GET)
	public String macro_06(Model model) {
		return "macro_06";
	}

	@RequestMapping(value = "/macro_07", method = RequestMethod.GET)
	public String macro_07(Model model) {
		return "macro_07";
	}

	@RequestMapping(value = "/macro_nested01", method = RequestMethod.GET)
	public String macro_nested01(Model model) {
		return "macro_nested01";
	}

	@RequestMapping(value = "/macro_nested02", method = RequestMethod.GET)
	public String macro_nested02(Model model) {
		return "macro_nested02";
	}

	@RequestMapping(value = "/macro_nested03", method = RequestMethod.GET)
	public String macro_nested03(Model model) {
		return "macro_nested03";
	}

	@RequestMapping(value = "/macro_return", method = RequestMethod.GET)
	public String macro_return(Model model) {
		return "macro_return";
	}

}
