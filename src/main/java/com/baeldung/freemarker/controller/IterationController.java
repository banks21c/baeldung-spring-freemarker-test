package com.baeldung.freemarker.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baeldung.freemarker.model.User;


@Controller
public class IterationController {

    @RequestMapping(value = "/iteration_01", method = RequestMethod.GET)
    public String iteration_01(Model model) {
        List users = new ArrayList();

        users.add("Joe");
        users.add("Kate");
        users.add("Fred");

        model.addAttribute("users", users);
        return "iteration_01";
    }

    @RequestMapping(value = "/iteration_02", method = RequestMethod.GET)
    public String iteration_02(Model model) {
    	List<User> users = new ArrayList<User>();

    	User user1 = new User();
    	user1.setName("Joe");
    	users.add(user1);

    	User user2 = new User();
    	user2.setName("Kate");
    	users.add(user2);

    	User user3 = new User();
    	user3.setName("Fred");
    	users.add(user3);

    	model.addAttribute("users", users);
    	return "iteration_02";
    }

}
