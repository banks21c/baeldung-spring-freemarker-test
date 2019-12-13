package com.baeldung.freemarker.model;

import java.util.List;

public class Misc {

    public List fruits;

    public Misc() {

    }

    public Misc(String fruit){
        fruits.add(fruit);
    }

    public List getFruits() {
        return fruits;
    }

    public void setFruits(List fruits) {
        this.fruits = fruits;
    }

}
