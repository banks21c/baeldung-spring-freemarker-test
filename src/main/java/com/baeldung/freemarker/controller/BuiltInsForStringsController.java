package com.baeldung.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuiltInsForStringsController {
	/*
	 * https://freemarker.apache.org/docs/ref_builtins_string.html
	 */

	@RequestMapping(value = "/ref_builtins_strings/index", method = RequestMethod.GET)
	public String index(Model model) {
		return "ref_builtins_strings/index";
	}

	@RequestMapping(value = "/ref_builtins_strings/ref_builtins_strings", method = RequestMethod.GET)
	public String ref_builtins_strings_strings(Model model) {
		model.addAttribute("message", "this is ref_builtins_strings test...");
		return "ref_builtins_strings/ref_builtins_strings";
	}

	@RequestMapping(value = "/ref_builtins_strings/boolean", method = RequestMethod.GET)
	public String ref_builtins_strings_boolean(Model model) {
		return "ref_builtins_strings/boolean";
	}

	@RequestMapping(value = "/ref_builtins_strings/cap_first", method = RequestMethod.GET)
	public String ref_builtins_strings_cap_first(Model model) {
		return "ref_builtins_strings/cap_first";
	}

	@RequestMapping(value = "/ref_builtins_strings/capitalize", method = RequestMethod.GET)
	public String ref_builtins_strings_capitalize(Model model) {
		return "ref_builtins_strings/capitalize";
	}

	@RequestMapping(value = "/ref_builtins_strings/chop_linebreak", method = RequestMethod.GET)
	public String ref_builtins_strings_chop_linebreak(Model model) {
		return "ref_builtins_strings/chop_linebreak";
	}

	@RequestMapping(value = "/ref_builtins_strings/contains", method = RequestMethod.GET)
	public String ref_builtins_strings_contains(Model model) {
		return "ref_builtins_strings/contains";
	}

	@RequestMapping(value = "/ref_builtins_strings/string_date", method = RequestMethod.GET)
	public String ref_builtins_strings_string_date(Model model) {
		return "ref_builtins_strings/date, time, datetime";
	}

	@RequestMapping(value = "/ref_builtins_strings/ends_with", method = RequestMethod.GET)
	public String ref_builtins_strings_ends_with(Model model) {
		return "ref_builtins_strings/ends_with";
	}

	@RequestMapping(value = "/ref_builtins_strings/ensure_ends_with", method = RequestMethod.GET)
	public String ref_builtins_strings_ensure_ends_with(Model model) {
		return "ref_builtins_strings/ensure_ends_with";
	}

	@RequestMapping(value = "/ref_builtins_strings/ensure_starts_with", method = RequestMethod.GET)
	public String ref_builtins_strings_ensure_starts_with(Model model) {
		return "ref_builtins_strings/ensure_starts_with";
	}

	@RequestMapping(value = "/ref_builtins_strings/esc", method = RequestMethod.GET)
	public String ref_builtins_strings_esc(Model model) {
		return "ref_builtins_strings/esc";
	}

	@RequestMapping(value = "/ref_builtins_strings/groups", method = RequestMethod.GET)
	public String ref_builtins_strings_groups(Model model) {
		return "ref_builtins_strings/groups";
	}

	@RequestMapping(value = "/ref_builtins_strings/html", method = RequestMethod.GET)
	public String ref_builtins_strings_html(Model model) {
		return "ref_builtins_strings/html (deprecated)";
	}

	@RequestMapping(value = "/ref_builtins_strings/index_of", method = RequestMethod.GET)
	public String ref_builtins_strings_index_of(Model model) {
		return "ref_builtins_strings/index_of";
	}

	@RequestMapping(value = "/ref_builtins_strings/j_string", method = RequestMethod.GET)
	public String ref_builtins_strings_j_string(Model model) {
		return "ref_builtins_strings/j_string";
	}

	@RequestMapping(value = "/ref_builtins_strings/js_string", method = RequestMethod.GET)
	public String ref_builtins_strings_js_string(Model model) {
		return "ref_builtins_strings/js_string";
	}

	@RequestMapping(value = "/ref_builtins_strings/json_string", method = RequestMethod.GET)
	public String ref_builtins_strings_json_string(Model model) {
		return "ref_builtins_strings/json_string";
	}

	@RequestMapping(value = "/ref_builtins_strings/keep_after", method = RequestMethod.GET)
	public String ref_builtins_strings_keep_after(Model model) {
		return "ref_builtins_strings/keep_after";
	}

	@RequestMapping(value = "/ref_builtins_strings/keep_after_last", method = RequestMethod.GET)
	public String ref_builtins_strings_keep_after_last(Model model) {
		return "ref_builtins_strings/keep_after_last";
	}

	@RequestMapping(value = "/ref_builtins_strings/keep_before", method = RequestMethod.GET)
	public String ref_builtins_strings_keep_before(Model model) {
		return "ref_builtins_strings/keep_before";
	}

	@RequestMapping(value = "/ref_builtins_strings/keep_before_last", method = RequestMethod.GET)
	public String ref_builtins_strings_keep_before_last(Model model) {
		return "ref_builtins_strings/keep_before_last";
	}

	@RequestMapping(value = "/ref_builtins_strings/last_index_of", method = RequestMethod.GET)
	public String ref_builtins_strings_last_index_of(Model model) {
		return "ref_builtins_strings/last_index_of";
	}

	@RequestMapping(value = "/ref_builtins_strings/left_pad", method = RequestMethod.GET)
	public String ref_builtins_strings_left_pad(Model model) {
		return "ref_builtins_strings/left_pad";
	}

	@RequestMapping(value = "/ref_builtins_strings/length", method = RequestMethod.GET)
	public String ref_builtins_strings_length(Model model) {
		return "ref_builtins_strings/length";
	}

	@RequestMapping(value = "/ref_builtins_strings/lower_case", method = RequestMethod.GET)
	public String ref_builtins_strings_lower_case(Model model) {
		return "ref_builtins_strings/lower_case";
	}

	@RequestMapping(value = "/ref_builtins_strings/matches", method = RequestMethod.GET)
	public String ref_builtins_strings_matches(Model model) {
		return "ref_builtins_strings/matches";
	}

	@RequestMapping(value = "/ref_builtins_strings/no_esc", method = RequestMethod.GET)
	public String ref_builtins_strings_no_esc(Model model) {
		return "ref_builtins_strings/no_esc";
	}

	@RequestMapping(value = "/ref_builtins_strings/number", method = RequestMethod.GET)
	public String ref_builtins_strings_number(Model model) {
		return "ref_builtins_strings/number";
	}

	@RequestMapping(value = "/ref_builtins_strings/replace", method = RequestMethod.GET)
	public String ref_builtins_strings_replace(Model model) {
		return "ref_builtins_strings/replace";
	}

	@RequestMapping(value = "/ref_builtins_strings/right_pad", method = RequestMethod.GET)
	public String ref_builtins_strings_right_pad(Model model) {
		return "ref_builtins_strings/right_pad";
	}

	@RequestMapping(value = "/ref_builtins_strings/remove_beginning", method = RequestMethod.GET)
	public String ref_builtins_strings_remove_beginning(Model model) {
		return "ref_builtins_strings/remove_beginning";
	}

	@RequestMapping(value = "/ref_builtins_strings/remove_ending", method = RequestMethod.GET)
	public String ref_builtins_strings_remove_ending(Model model) {
		return "ref_builtins_strings/remove_ending";
	}

	@RequestMapping(value = "/ref_builtins_strings/rtf", method = RequestMethod.GET)
	public String ref_builtins_strings_rtf(Model model) {
		return "ref_builtins_strings/rtf (deprecated)";
	}

	@RequestMapping(value = "/ref_builtins_strings/split", method = RequestMethod.GET)
	public String ref_builtins_strings_split(Model model) {
		return "ref_builtins_strings/split";
	}

	@RequestMapping(value = "/ref_builtins_strings/starts_with", method = RequestMethod.GET)
	public String ref_builtins_strings_starts_with(Model model) {
		return "ref_builtins_strings/starts_with";
	}

	@RequestMapping(value = "/ref_builtins_strings/string_for_string", method = RequestMethod.GET)
	public String ref_builtins_strings_string_for_string(Model model) {
		return "ref_builtins_strings/string (when used with a string value)";
	}

	@RequestMapping(value = "/ref_builtins_strings/substring", method = RequestMethod.GET)
	public String ref_builtins_strings_substring(Model model) {
		return "ref_builtins_strings/substring (deprecated)";
	}

	@RequestMapping(value = "/ref_builtins_strings/trim", method = RequestMethod.GET)
	public String ref_builtins_strings_trim(Model model) {
		return "ref_builtins_strings/trim";
	}

	@RequestMapping(value = "/ref_builtins_strings/truncate", method = RequestMethod.GET)
	public String ref_builtins_strings_truncate(Model model) {
		return "ref_builtins_strings/truncate, truncate_...";
	}

	@RequestMapping(value = "/ref_builtins_strings/uncap_first", method = RequestMethod.GET)
	public String ref_builtins_strings_uncap_first(Model model) {
		return "ref_builtins_strings/uncap_first";
	}

	@RequestMapping(value = "/ref_builtins_strings/upper_case", method = RequestMethod.GET)
	public String ref_builtins_strings_upper_case(Model model) {
		return "ref_builtins_strings/upper_case";
	}

	@RequestMapping(value = "/ref_builtins_strings/url", method = RequestMethod.GET)
	public String ref_builtins_strings_url(Model model) {
		return "ref_builtins_strings/url";
	}

	@RequestMapping(value = "/ref_builtins_strings/url_path", method = RequestMethod.GET)
	public String ref_builtins_strings_url_path(Model model) {
		return "ref_builtins_strings/url_path";
	}

	@RequestMapping(value = "/ref_builtins_strings/word_list", method = RequestMethod.GET)
	public String ref_builtins_strings_word_list(Model model) {
		return "ref_builtins_strings/word_list";
	}

	@RequestMapping(value = "/ref_builtins_strings/xhtml", method = RequestMethod.GET)
	public String ref_builtins_strings_xhtml(Model model) {
		return "ref_builtins_strings/xhtml (deprecated)";
	}

	@RequestMapping(value = "/ref_builtins_strings/xml", method = RequestMethod.GET)
	public String ref_builtins_strings_xml(Model model) {
		return "ref_builtins_strings/xml (deprecated)";
	}

	@RequestMapping(value = "/ref_builtins_strings/string_flags", method = RequestMethod.GET)
	public String ref_builtins_strings_string_flags(Model model) {
		return "ref_builtins_strings/Common flags";
	}

}
