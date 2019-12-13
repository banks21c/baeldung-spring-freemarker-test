package com.baeldung.freemarker.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuiltInsForDateController {
	/*
	 * https://freemarker.apache.org/docs/ref_builtins_date.html
	 */

	@RequestMapping(value = "/ref_builtins_date/example", method = RequestMethod.GET)
	public String example(Model model,Locale locale) {
		return "ref_builtins_date/example";
	}

	@RequestMapping(value = "/ref_builtins_date/index", method = RequestMethod.GET)
	public String index(Model model,Locale defaultLocale) {

		System.out.println("1.locale:"+ defaultLocale);
		System.out.println("1.defaultLocale1:"+ defaultLocale.getDefault());
		System.out.println("1.language:"+ defaultLocale.getLanguage());
		System.out.println("1.country:"+ defaultLocale.getCountry());
		System.out.println("");

		System.out.println("2.defaultLocale2:"+ Locale.getDefault());
		System.out.println("2.language:"+ Locale.getDefault().getLanguage());
		System.out.println("2.country:"+ Locale.getDefault().getCountry());
		System.out.println("");

		Locale newLocale;
//		newLocale = new Locale.Builder().setLanguage("en").setRegion("US").build();
//		Locale koLocale = new Locale("ko", "KR","WIN");
//		Locale koLocale = new Locale("ko", "KR","MAC");
		Locale koLocale = new Locale("ko", "KR");
		Locale enLocale = new Locale("en", "US");
		newLocale = new Locale("en", "GB");
		newLocale = new Locale("fr", "CA");
		newLocale = new Locale("ja", "JP");
		newLocale = Locale.JAPAN;
		newLocale = Locale.CANADA_FRENCH;
		newLocale = Locale.KOREA;
		newLocale = Locale.KOREAN;

//		newLocale = Locale.forLanguageTag("ko-KR");
//		newLocale = Locale.forLanguageTag("en-US");
		Locale.setDefault(koLocale);

		System.out.println("defaultLocale:"+ Locale.getDefault());
		System.out.println("language:"+ Locale.getDefault().getLanguage());
		System.out.println("country:"+ Locale.getDefault().getCountry());
		System.out.println("");

//		newLocale = Locale.forLanguageTag("ko-KR");
//		newLocale = Locale.forLanguageTag("en-US");
		Locale.setDefault(enLocale);

		System.out.println("defaultLocale:"+ Locale.getDefault());
		System.out.println("language:"+ Locale.getDefault().getLanguage());
		System.out.println("country:"+ Locale.getDefault().getCountry());
		System.out.println("");

		Locale.setDefault(koLocale);

		System.out.println("defaultLocale:"+ Locale.getDefault());
		System.out.println("language:"+ Locale.getDefault().getLanguage());
		System.out.println("country:"+ Locale.getDefault().getCountry());
		System.out.println("");

		System.out.println("defaultLocale :"+defaultLocale);
		defaultLocale.setDefault(koLocale);
//		defaultLocale.setDefault(enLocale);
		System.out.println("defaultLocale1 :"+defaultLocale);
		System.out.println("defaultLocale2 :"+defaultLocale.getDefault());

		//Jan 08 2015 20:40:56 GMT+0530 (IST)
		Date date = new Date();
		String pattern = "MM/dd/yyyy HH:mm:ss a";
//		String pattern = "MMM dd yyyy HH:mm:ss 'GMT'Z (z)";
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		SimpleDateFormat dateFormat = new SimpleDateFormat(pattern, defaultLocale);
		SimpleDateFormat dateFormat = new SimpleDateFormat(pattern, defaultLocale.getDefault());
//		TimeZone.setDefault(TimeZone.getTimeZone("IST"));
//		TimeZone.setDefault(TimeZone.getTimeZone("GMT"));
//		TimeZone.setDefault(TimeZone.getTimeZone("PST"));
//		dateFormat.setTimeZone(TimeZone.getDefault());

		String formattedDate = dateFormat.format(date);
		System.out.println("formattedDate :"+formattedDate);
		//Unparseable date: "12/05/2019 14:32:33 오후"
		model.addAttribute("lastUpdated", formattedDate );
	    model.addAttribute("openingTime", formattedDate );

	    LocalDate localDate = LocalDate.now(); // Create a date object
	    model.addAttribute("localDate", localDate );
	    System.out.println("localDate:"+localDate);

	    DateTimeFormatter localDateFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

	    String formattedLocalDate = localDate.format(localDateFormatter);
	    model.addAttribute("formattedLocalDate", formattedLocalDate );


	    LocalTime localTime = LocalTime.now();
	    model.addAttribute("localTime", localTime );
	    System.out.println("localTime:"+localTime);

	    DateTimeFormatter localTimeFormatter1 = DateTimeFormatter.ofPattern("HH:mm:ss a");
	    String formattedLocalTime1 = localTime.format(localTimeFormatter1);
	    model.addAttribute("formattedLocalTime1", formattedLocalTime1 );

	    DateFormat localTimeFormatter2 = new SimpleDateFormat("HH:mm:ss a");
	    String formattedLocalTime2 = localTimeFormatter2.format(new Date());
	    model.addAttribute("formattedLocalTime2", formattedLocalTime2 );

	    DateFormat localTimeFormatter3 = new SimpleDateFormat("HH:mm:ss aa");
	    String formattedLocalTime3 = localTimeFormatter3.format(new Date());
	    model.addAttribute("formattedLocalTime3", formattedLocalTime3 );


	    LocalDateTime localDateTime = LocalDateTime.now();
	    model.addAttribute("localDateTime", localDateTime );
	    System.out.println("localDateTime:"+localDateTime);

	    LocalDateTime unformattedDateTime = LocalDateTime.now();
	    System.out.println("Before formatting: " + unformattedDateTime);
	    DateTimeFormatter myFormatObj = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");

	    String formattedDateTime = unformattedDateTime.format(myFormatObj);
	    model.addAttribute("formattedDateTime", formattedDateTime );
	    System.out.println("After formatting: " + formattedDateTime);

	    return "ref_builtins_date/index";
	}

	@RequestMapping(value = "/ref_builtins_date/ref_builtins_date", method = RequestMethod.GET)
	public String ref_builtins_strings_strings(Model model,Locale locale) {
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);
		System.out.println("formattedDate :"+formattedDate);
		model.addAttribute("lastUpdated", formattedDate );
		return "ref_builtins_date/ref_builtins_date";
	}

}
