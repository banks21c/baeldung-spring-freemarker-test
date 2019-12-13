package com.baeldung.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BuiltInsForDirectiveReferenceController {
	/*
	 * https://freemarker.apache.org/docs/ref_builtins_string.html
	 */
	@RequestMapping(value = "/directive_reference/index", method = RequestMethod.GET)
	public String directive_reference_index(Model model) {
		return "directive_reference/index";
	}
	@RequestMapping(value = "/directive_reference/assign", method = RequestMethod.GET)
	public String directive_reference_assign(Model model) {
		return "directive_reference/assign";
	}

	@RequestMapping(value = "/directive_reference/attempt", method = RequestMethod.GET)
	public String directive_reference_attempt(Model model) {
		return "directive_reference/attempt";
	}

	@RequestMapping(value = "/directive_reference/autoesc", method = RequestMethod.GET)
	public String directive_reference_autoesc(Model model) {
		return "directive_reference/autoesc";
	}

	@RequestMapping(value = "/directive_reference/break", method = RequestMethod.GET)
	public String directive_reference_break(Model model) {
		return "directive_reference/break";
	}

	@RequestMapping(value = "/directive_reference/case", method = RequestMethod.GET)
	public String directive_reference_case(Model model) {
		return "directive_reference/case";
	}

	@RequestMapping(value = "/directive_reference/compress", method = RequestMethod.GET)
	public String directive_reference_compress(Model model) {
		return "directive_reference/compress";
	}

	@RequestMapping(value = "/directive_reference/continue", method = RequestMethod.GET)
	public String directive_reference_continue(Model model) {
		return "directive_reference/continue";
	}

	@RequestMapping(value = "/directive_reference/default", method = RequestMethod.GET)
	public String directive_reference_default(Model model) {
		return "directive_reference/default";
	}

	@RequestMapping(value = "/directive_reference/else", method = RequestMethod.GET)
	public String directive_reference_else(Model model) {
		return "directive_reference/else";
	}

	@RequestMapping(value = "/directive_reference/elseif", method = RequestMethod.GET)
	public String directive_reference_elseif(Model model) {
		return "directive_reference/elseif";
	}

	@RequestMapping(value = "/directive_reference/escape", method = RequestMethod.GET)
	public String directive_reference_escape(Model model) {
		return "directive_reference/escape";
	}

	@RequestMapping(value = "/directive_reference/fallback", method = RequestMethod.GET)
	public String directive_reference_fallback(Model model) {
		return "directive_reference/fallback";
	}

	@RequestMapping(value = "/directive_reference/flush", method = RequestMethod.GET)
	public String directive_reference_flush(Model model) {
		return "directive_reference/flush";
	}

	@RequestMapping(value = "/directive_reference/ftl", method = RequestMethod.GET)
	public String directive_reference_ftl(Model model) {
		return "directive_reference/ftl";
	}

	@RequestMapping(value = "/directive_reference/function", method = RequestMethod.GET)
	public String directive_reference_function(Model model) {
		return "directive_reference/function";
	}

	@RequestMapping(value = "/directive_reference/global", method = RequestMethod.GET)
	public String directive_reference_global(Model model) {
		return "directive_reference/global";
	}

	@RequestMapping(value = "/directive_reference/if", method = RequestMethod.GET)
	public String directive_reference_if(Model model) {
		return "directive_reference/if";
	}

	@RequestMapping(value = "/directive_reference/import", method = RequestMethod.GET)
	public String directive_reference_import(Model model) {
		return "directive_reference/import";
	}

	@RequestMapping(value = "/directive_reference/include", method = RequestMethod.GET)
	public String directive_reference_include(Model model) {
		return "directive_reference/include";
	}

	@RequestMapping(value = "/directive_reference/items", method = RequestMethod.GET)
	public String directive_reference_items(Model model) {
		return "directive_reference/items";
	}

	@RequestMapping(value = "/directive_reference/list", method = RequestMethod.GET)
	public String directive_reference_list(Model model) {
		return "directive_reference/list";
	}

	@RequestMapping(value = "/directive_reference/local", method = RequestMethod.GET)
	public String directive_reference_local(Model model) {
		return "directive_reference/local";
	}

	@RequestMapping(value = "/directive_reference/lt", method = RequestMethod.GET)
	public String directive_reference_lt(Model model) {
		return "directive_reference/lt";
	}

	@RequestMapping(value = "/directive_reference/macro", method = RequestMethod.GET)
	public String directive_reference_macro(Model model) {
		return "directive_reference/macro";
	}

	@RequestMapping(value = "/directive_reference/nested", method = RequestMethod.GET)
	public String directive_reference_nested(Model model) {
		return "directive_reference/nested";
	}

	@RequestMapping(value = "/directive_reference/noautoesc", method = RequestMethod.GET)
	public String directive_reference_noautoesc(Model model) {
		return "directive_reference/noautoesc";
	}

	@RequestMapping(value = "/directive_reference/noescape", method = RequestMethod.GET)
	public String directive_reference_noescape(Model model) {
		return "directive_reference/noescape";
	}

	@RequestMapping(value = "/directive_reference/noparse", method = RequestMethod.GET)
	public String directive_reference_noparse(Model model) {
		return "directive_reference/noparse";
	}

	@RequestMapping(value = "/directive_reference/nt", method = RequestMethod.GET)
	public String directive_reference_nt(Model model) {
		return "directive_reference/nt";
	}

	@RequestMapping(value = "/directive_reference/outputformat", method = RequestMethod.GET)
	public String directive_reference_outputformat(Model model) {
		return "directive_reference/outputformat";
	}

	@RequestMapping(value = "/directive_reference/recover", method = RequestMethod.GET)
	public String directive_reference_recover(Model model) {
		return "directive_reference/recover";
	}

	@RequestMapping(value = "/directive_reference/recurse", method = RequestMethod.GET)
	public String directive_reference_recurse(Model model) {
		return "directive_reference/recurse";
	}

	@RequestMapping(value = "/directive_reference/return", method = RequestMethod.GET)
	public String directive_reference_return(Model model) {
		return "directive_reference/return";
	}

	@RequestMapping(value = "/directive_reference/rt", method = RequestMethod.GET)
	public String directive_reference_rt(Model model) {
		return "directive_reference/rt";
	}

	@RequestMapping(value = "/directive_reference/sep", method = RequestMethod.GET)
	public String directive_reference_sep(Model model) {
		return "directive_reference/sep";
	}

	@RequestMapping(value = "/directive_reference/setting", method = RequestMethod.GET)
	public String directive_reference_setting(Model model) {
		return "directive_reference/setting";
	}

	@RequestMapping(value = "/directive_reference/stop", method = RequestMethod.GET)
	public String directive_reference_stop(Model model) {
		return "directive_reference/stop";
	}

	@RequestMapping(value = "/directive_reference/switch", method = RequestMethod.GET)
	public String directive_reference_switch(Model model) {
		return "directive_reference/switch";
	}

	@RequestMapping(value = "/directive_reference/t", method = RequestMethod.GET)
	public String directive_reference_t(Model model) {
		return "directive_reference/t";
	}

	@RequestMapping(value = "/directive_reference/userDefined", method = RequestMethod.GET)
	public String directive_reference_userDefined(Model model) {
		return "directive_reference/userDefined";
	}

	@RequestMapping(value = "/directive_reference/visit", method = RequestMethod.GET)
	public String directive_reference_visit(Model model) {
		return "directive_reference/visit";
	}
}
