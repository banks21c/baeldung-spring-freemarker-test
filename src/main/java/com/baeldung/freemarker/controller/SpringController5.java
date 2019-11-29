package com.baeldung.freemarker.controller;


import java.util.HashMap;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baeldung.freemarker.model.Animal;


@Controller
public class SpringController5 {

    @RequestMapping(value = "/pythons", method = RequestMethod.GET)
    public String pythons(Model model) {
//        List<HashMap> animalList = new ArrayList<HashMap>();
        HashMap animalMap = new HashMap();

        Animal python = new Animal();
        python.setName("파이선");
        python.setPrice(1000000);
        python.setIsProtected(true);

        animalMap.put("python",python);

        Animal elephant = new Animal();
        elephant.setName("호랑이");
        elephant.setPrice(1500000);
        elephant.setIsProtected(true);

        animalMap.put("elephant",elephant);

        model.addAttribute("animals", animalMap);
        return "pythons";
    }

}
