package com.baeldung.freemarker.model;

import java.util.List;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;

public class Animal {

    private String name;
    private long price;
    private List<Animal> animalList;
    private boolean isProtected;

    @Override
	public String toString() {
        return ReflectionToStringBuilder.toString(this);
    }

    public boolean isIsProtected() {
        return isProtected;
    }

    public void setIsProtected(boolean isProtected) {
        this.isProtected = isProtected;
    }

    public List<Animal> getAnimalList() {
        return animalList;
    }

    public void setAnimalList(List<Animal> animalList) {
        this.animalList = animalList;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

}
