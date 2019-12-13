package com.baeldung.freemarker.model;

public class TemplateModelImpl implements freemarker.template.TemplateModel{

	public TemplateModelImpl() {
		System.out.println("TemplateModelImpl constructor called by freemarker with no arguments");
	}

	public TemplateModelImpl(int arg) {
		System.out.println("TemplateModelImpl constructor called by freemarker with int argument :"+arg);
	}
	public static void main(String[] args) {

	}

}
