package com.test.beans;

import java.util.Date;

public class Product {
    private String name;
    private Date date;
    private Double price, discount;

    public Product(Date date) {
        this.date = date;
    }

    public Product(String name, Double price, Double discount) {
        this.name = name;
        this.date = date;
        this.price = price;
        this.discount = discount;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getDiscount() {
        return discount;
    }

    public void setDiscount(Double discount) {
        this.discount = discount;
    }
}
