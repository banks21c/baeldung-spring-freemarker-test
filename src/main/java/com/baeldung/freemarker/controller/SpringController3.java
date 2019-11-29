package com.baeldung.freemarker.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baeldung.freemarker.model.Product;
import org.springframework.ui.Model;

@Controller
public class SpringController3 {

    @RequestMapping(value = "/welcome1", method = RequestMethod.GET)
    public String welcome1(Model model) {
        model.addAttribute("user", "Big Joe");

        Product p = new Product();
        p.setName("Pencel");
        p.setUrl("http://www.monami.com/en/m/product/product_list.php?ccode=005005");
        model.addAttribute("latestProduct", p);
        return "welcome1";
    }

    @RequestMapping(value = "/welcome2", method = RequestMethod.GET)
    public String welcome2(Model model) {
        model.addAttribute("user", "Eric Clapton");

        return "welcome2";
    }

    @RequestMapping(value = "/welcome3", method = RequestMethod.GET)
    public String welcome3(Model model) {
        model.addAttribute("user", "Bon Jovi");

        return "welcome3";
    }
}
