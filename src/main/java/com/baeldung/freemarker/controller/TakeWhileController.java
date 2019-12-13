package com.baeldung.freemarker.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TakeWhileController {

	@RequestMapping(value = "/take_while_01", method = RequestMethod.GET)
	public String take_while_01(Model model) {
        List<String> lines = new ArrayList<String>();

        String s1 = "aaaaaaaaaaaaaaaaaa";
        lines.add(s1);
        String s2 = "bbbbbbbbbbbbbbbbbb";
        lines.add(s2);
        String s3 = "cccccccccccccccccc";
        lines.add(s3);
        String s4 = "";
        lines.add(s4);
        String s5 = "dddddddddddddddddd";
        lines.add(s5);

        model.addAttribute("lines", lines);
		return "take_while_01";
	}

}
