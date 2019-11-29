package com.baeldung.freemarker.controller;

import com.baeldung.freemarker.model.Animal;
import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baeldung.freemarker.model.Misc;
import org.springframework.ui.Model;

@Controller
public class SpringController2 {

    List fruits = Arrays.asList("Apple", "Pear", "Pine Apple", "Straw Berry", "Mango", "MangoSteen", "Banana", "Kiwi", "Avocado");

    @RequestMapping(value = "/fruitlist0", method = RequestMethod.GET)
    public String fruitlist0(@ModelAttribute("model") ModelMap model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc.fruits", misc.getFruits());
        return "fruitlist0";
    }
    @RequestMapping(value = "/fruitlist0_1", method = RequestMethod.GET)
    public String fruitlist0_1(Model model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc", misc);
//        model.addAttribute("fruits", misc.getFruits());
        return "fruitlist0_1";
    }
    
    @RequestMapping(value = "/fruitlist1", method = RequestMethod.GET)
    public String fruitlist1(@ModelAttribute("model") ModelMap model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc.fruits", misc.getFruits());
        return "fruitlist1";
    }
    @RequestMapping(value = "/fruitlist1_1", method = RequestMethod.GET)
    public String fruitlist1_1(Model model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc", misc);
        return "fruitlist1_1";
    }
    
    @RequestMapping(value = "/fruitlist2", method = RequestMethod.GET)
    public String fruitlist2(@ModelAttribute("model") ModelMap model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc.fruits", misc.getFruits());
        return "fruitlist2";
    }
    
    @RequestMapping(value = "/fruitlist2_2", method = RequestMethod.GET)
    public String fruitlist2_2(Model model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc", misc);
        return "fruitlist2_2";
    }

    @RequestMapping(value = "/fruitlist3", method = RequestMethod.GET)
    public String fruitlist3(@ModelAttribute("model") ModelMap model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc.fruits", misc.getFruits());
        return "fruitlist3";
    }
    @RequestMapping(value = "/fruitlist3_1", method = RequestMethod.GET)
    public String fruitlist3_1(Model model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc", misc);
        return "fruitlist3_1";
    }

    @RequestMapping(value = "/fruitlist4", method = RequestMethod.GET)
    public String fruitlist4(@ModelAttribute("model") ModelMap model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc.fruits", misc.getFruits());
        return "fruitlist4";
    }
    @RequestMapping(value = "/fruitlist4_1", method = RequestMethod.GET)
    public String fruitlist4_1(Model model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc", misc);
        return "fruitlist4_1";
    }

    @RequestMapping(value = "/fruitlist5", method = RequestMethod.GET)
    public String fruitlist5(@ModelAttribute("model") ModelMap model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc.fruits", misc.getFruits());
        return "fruitlist5";
    }
    @RequestMapping(value = "/fruitlist5_1", method = RequestMethod.GET)
    public String fruitlist5_1(Model model) {
        Misc misc = new Misc();
        misc.setFruits(fruits);
        model.addAttribute("misc", misc);
        return "fruitlist5_1";
    }
    
    @RequestMapping(value = "/copyright_include", method = RequestMethod.GET)
    public String copyright_include(@ModelAttribute("model") ModelMap model) {
        return "copyright_include";
    }

    @RequestMapping(value = "/animallist", method = RequestMethod.GET)
    public String animallist(Model model) {
        List animalList = new ArrayList();

        Animal lion = new Animal();
        lion.setName("사자");
        lion.setPrice(1000000);

        animalList.add(lion);

        Animal tiger = new Animal();
        tiger.setName("호랑이");
        tiger.setPrice(1500000);

        animalList.add(tiger);

        Animal cheetah = new Animal();
        cheetah.setName("치타");
        cheetah.setPrice(1500000);

        animalList.add(cheetah);

        model.addAttribute("animals", animalList);
        return "animallist";
    }

}
