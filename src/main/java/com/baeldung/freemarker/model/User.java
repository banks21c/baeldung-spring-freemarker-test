package com.baeldung.freemarker.model;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;

public class User {

    private String name;

    @Override
	public String toString() {
        return ReflectionToStringBuilder.toString(this);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
