package com.baeldung.freemarker.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.baeldung.freemarker.method.LastCharMethod;
import com.baeldung.freemarker.model.Car;

import freemarker.template.DefaultObjectWrapperBuilder;
import freemarker.template.Version;

@Controller
public class SpringController {

    private static List<Car> carList = new ArrayList<Car>();
    private static List<String> fruitList = new ArrayList<String>();

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        return "redirect:/cars";
    }

    static {
        carList.add(new Car("Honda", "Civic"));
        carList.add(new Car("Toyota", "Camry"));
        carList.add(new Car("Nissan", "Altima"));
    }

    static {
        String[] fruits = {"Apple", "Pear", "Pine Apple", "Straw Berry", "Mango", "MangoSteen", "Banana", "Kiwi", "Avocado"};
        fruitList = new ArrayList(Arrays.asList(fruits));
    }

    @RequestMapping(value = "/cars", method = RequestMethod.GET)
    public String cars(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("carList", carList);
        return "cars";
    }

    @RequestMapping(value = "/addCar", method = RequestMethod.POST)
    public String addCar(@ModelAttribute("car") Car car) {
        if (null != car && null != car.getMake() && null != car.getModel() && !car.getMake().isEmpty() && !car.getModel().isEmpty()) {
            carList.add(car);
        }
        return "redirect:/cars";
    }
    
    @RequestMapping(value = "/fruits", method = RequestMethod.GET)
    public String fruits(@ModelAttribute("model") ModelMap model) {
        model.addAttribute("fruits", fruitList);
        return "fruits";
    }
    
    @RequestMapping(value = "/addFruit", method = RequestMethod.POST)
    public String addFruit(@RequestParam(required = false, defaultValue = "default fruit") String fruit) {
        System.out.println("fruit :" + fruit);
        if (fruit != null) {
            fruitList.add(fruit);
        }
        return "redirect:/fruits";
    }

    @RequestMapping(value = "/commons", method = RequestMethod.GET)
    public String showCommonsPage(Model model) {
        model.addAttribute("statuses", Arrays.asList("200 OK", "404 Not Found", "500 Internal Server Error"));
        model.addAttribute("lastChar", new LastCharMethod());
        model.addAttribute("random", new Random());
        model.addAttribute("statics", new DefaultObjectWrapperBuilder(new Version("2.3.28")).build().getStaticModels());
        return "commons";
    }
}