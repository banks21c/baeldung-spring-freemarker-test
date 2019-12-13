package com.baeldung.freemarker.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuiltInsForBooleansController {
	/*
	 * https://freemarker.apache.org/docs/ref_builtins_boolean.html
	 */

	@RequestMapping(value = "/ref_builtins_booleans/example", method = RequestMethod.GET)
	public String example(Model model,Locale locale) {
		return "ref_builtins_booleans/example";
	}

	@RequestMapping(value = "/ref_builtins_booleans/index", method = RequestMethod.GET)
	public String index(Model model,Locale locale) {


		//Jan 08 2015 20:40:56 GMT+0530 (IST)
		Date date = new Date();
		String pattern = "MM/dd/yyyy HH:mm:ss a";
//		String pattern = "MMM dd yyyy HH:mm:ss 'GMT'Z (z)";
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		SimpleDateFormat dateFormat = new SimpleDateFormat(pattern, locale);
//		TimeZone.setDefault(TimeZone.getTimeZone("IST"));
		TimeZone.setDefault(TimeZone.getTimeZone("PST"));
		dateFormat.setTimeZone(TimeZone.getDefault());

		String formattedDate = dateFormat.format(date);
		System.out.println("formattedDate :"+formattedDate);
		model.addAttribute("lastUpdated", formattedDate );
	    model.addAttribute("openingTime", formattedDate );

	    LocalDate localDate = LocalDate.now(); // Create a date object
	    model.addAttribute("localDate", localDate );
	    System.out.println("localDate:"+localDate);

	    LocalTime localTime = LocalTime.now();
	    model.addAttribute("localTime", localTime );
	    System.out.println("localTime:"+localTime);

	    LocalDateTime localDateTime = LocalDateTime.now();
	    model.addAttribute("localDateTime", localDateTime );
	    System.out.println("localDateTime:"+localDateTime);

	    LocalDateTime unformattedDateTime = LocalDateTime.now();
	    System.out.println("Before formatting: " + unformattedDateTime);
	    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");

	    String formattedDateTime = unformattedDateTime.format(myFormatObj);
	    model.addAttribute("formattedDateTime", formattedDateTime );
	    System.out.println("After formatting: " + formattedDateTime);

	    return "ref_builtins_booleans/index";
	}

	@RequestMapping(value = "/ref_builtins_booleans/ref_builtins_booleans", method = RequestMethod.GET)
	public String ref_builtins_strings_strings(Model model,Locale locale) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);
		System.out.println("formattedDate :"+formattedDate);
		model.addAttribute("lastUpdated", formattedDate );
		return "ref_builtins_booleans/ref_builtins_booleans";
	}

}
