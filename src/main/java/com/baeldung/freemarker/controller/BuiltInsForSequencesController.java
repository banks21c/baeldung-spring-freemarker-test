package com.baeldung.freemarker.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.baeldung.freemarker.model.User;

@Controller
public class BuiltInsForSequencesController {
/*
* Page Contents
* chunk
* drop_while
* filter
* first
* join
* last
* map
* min, max
* reverse
* seq_contains
* seq_index_of
* seq_last_index_of
* size
* sort
* sort_by
* take_while
*/

	@RequestMapping(value = "/ref_builtins_sequences/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "ref_builtins_sequences/index";
	}

	@RequestMapping(value = "/ref_builtins_sequences/chunk", method = RequestMethod.GET)
	public String chunk(Model model) {
		return "ref_builtins_sequences/chunk";
	}

	@RequestMapping(value = "/ref_builtins_sequences/drop_while", method = RequestMethod.GET)
	public String drop_while(Model model) {
		return "ref_builtins_sequences/drop_while";
	}

	@RequestMapping(value = "/ref_builtins_sequences/filter", method = RequestMethod.GET)
	public String filter(Model model) {
		return "ref_builtins_sequences/filter";
	}
	@RequestMapping(value = "/ref_builtins_sequences/first", method = RequestMethod.GET)
	public String first(Model model) {
		return "ref_builtins_sequences/first";
	}
	@RequestMapping(value = "/ref_builtins_sequences/join", method = RequestMethod.GET)
	public String join(Model model) {
		return "ref_builtins_sequences/join";
	}
	@RequestMapping(value = "/ref_builtins_sequences/last", method = RequestMethod.GET)
	public String last(Model model) {
		return "ref_builtins_sequences/last";
	}
	@RequestMapping(value = "/ref_builtins_sequences/map", method = RequestMethod.GET)
	public String map(Model model) {
		List<User> users = new ArrayList<User>();
		User user = new User();
		user.setName("홍길동");
		users.add(user);

		user = new User();
		user.setName("이순신");
		users.add(user);
		model.addAttribute("users", users);
		return "ref_builtins_sequences/map";
	}
	@RequestMapping(value = "/ref_builtins_sequences/min_max", method = RequestMethod.GET)
	public String min_max(Model model) {
		return "ref_builtins_sequences/min_max";
	}
	@RequestMapping(value = "/ref_builtins_sequences/reverse", method = RequestMethod.GET)
	public String reverse(Model model) {
		return "ref_builtins_sequences/reverse";
	}
	@RequestMapping(value = "/ref_builtins_sequences/seq_contains", method = RequestMethod.GET)
	public String seq_contains(Model model) {
		return "ref_builtins_sequences/seq_contains";
	}
	@RequestMapping(value = "/ref_builtins_sequences/seq_index_of", method = RequestMethod.GET)
	public String seq_index_of(Model model) {
		return "ref_builtins_sequences/seq_index_of";
	}
	@RequestMapping(value = "/ref_builtins_sequences/seq_last_index_of", method = RequestMethod.GET)
	public String seq_last_index_of(Model model) {
		return "ref_builtins_sequences/seq_last_index_of";
	}
	@RequestMapping(value = "/ref_builtins_sequences/size", method = RequestMethod.GET)
	public String size(Model model) {
		return "ref_builtins_sequences/size";
	}
	@RequestMapping(value = "/ref_builtins_sequences/sort", method = RequestMethod.GET)
	public String sort(Model model) {
		return "ref_builtins_sequences/sort";
	}
	@RequestMapping(value = "/ref_builtins_sequences/sort_by", method = RequestMethod.GET)
	public String sort_by(Model model) {
		return "ref_builtins_sequences/sort_by";
	}

	@RequestMapping(value = "/ref_builtins_sequences/take_while", method = RequestMethod.GET)
	public String take_while(Model model) {
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
		return "ref_builtins_sequences/take_while";
	}

}
