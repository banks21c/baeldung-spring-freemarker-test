package com.baeldung.freemarker.controller;


import com.baeldung.freemarker.model.Animal;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class SpringController6 {

    @RequestMapping(value = "/nest_directives", method = RequestMethod.GET)
    public String nest_directives(Model model) {
        List<Animal> animalList = new ArrayList<Animal>();

        Animal python = new Animal();
        python.setName("파이선");
        python.setPrice(1000000);
        python.setIsProtected(true);
        animalList.add(python);

        Animal elephant = new Animal();
        elephant.setName("호랑이");
        elephant.setPrice(1500000);
        elephant.setIsProtected(false);
        animalList.add(elephant);

        model.addAttribute("animals", animalList);
        return "nest_directives";
    }
    
}
