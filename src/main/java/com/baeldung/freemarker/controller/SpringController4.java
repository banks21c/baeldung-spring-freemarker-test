package com.baeldung.freemarker.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SpringController4 {

    @RequestMapping(value = "/output_format_html", method = RequestMethod.GET)
    public String output_format_html(Model model) {
        return "output_format_html";
    }
    @RequestMapping(value = "/output_format_xml", method = RequestMethod.GET)
    public String output_format_xml(Model model) {
        return "output_format_xml";
    }

    @RequestMapping(value = "/output_html1", method = RequestMethod.GET)
    public String output_html1(@ModelAttribute("model") ModelMap model) {
        return "output_html";
    }

    @RequestMapping(value = "/output_xml1", method = RequestMethod.GET)
    public String output_xml1(@ModelAttribute("model") ModelMap model) {
        return "output_xml";
    }
}
