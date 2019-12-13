package com.baeldung.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BreakContinueController {

	@RequestMapping(value = "/break", method = RequestMethod.GET)
	public String breakTest(Model model) {
		return "break";
	}

	@RequestMapping(value = "/continue", method = RequestMethod.GET)
	public String continueTest(Model model) {
		return "continue";
	}

}
