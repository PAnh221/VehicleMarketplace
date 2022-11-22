package com.okxe.beans;

import java.util.Date;

public class Bike {
    private int bike_id;
    private String name;
    private Long price;
    private Date year;
    private String color;
    private String odo;
    private int type_id;
    private String engine;
    private int brand_id;
    private int user_id;
    private String image;
    private Date posted_date;
    private int status;

    public Bike() {
    }

    public Bike(int bike_id, String name, Long price, Date year, String color, String odo, int type_id, String engine, int brand_id, int user_id, String image, Date posted_date, int status) {
        this.bike_id = bike_id;
        this.name = name;
        this.price = price;
        this.year = year;
        this.color = color;
        this.odo = odo;
        this.type_id = type_id;
        this.engine = engine;
        this.brand_id = brand_id;
        this.user_id = user_id;
        this.image = image;
        this.posted_date = posted_date;
        this.status = status;
    }

    public Bike(String name, Long price, Date year, String color, String odo, int type_id, String engine, int brand_id, int user_id, String image, Date posted_date, int status) {
        this.name = name;
        this.price = price;
        this.year = year;
        this.color = color;
        this.odo = odo;
        this.type_id = type_id;
        this.engine = engine;
        this.brand_id = brand_id;
        this.user_id = user_id;
        this.image = image;
        this.posted_date = posted_date;
        this.status = status;
    }

    public Bike(String name, Long price, Date year, String color, String odo, int type_id, String engine, int brand_id, int user_id, Date posted_date, int status) {
        this.name = name;
        this.price = price;
        this.year = year;
        this.color = color;
        this.odo = odo;
        this.type_id = type_id;
        this.engine = engine;
        this.brand_id = brand_id;
        this.user_id = user_id;
        this.posted_date = posted_date;
        this.status = status;
    }

    public int getBike_id() {
        return bike_id;
    }

    public void setBike_id(int bike_id) {
        this.bike_id = bike_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Date getYear() {
        return year;
    }

    public void setYear(Date year) {
        this.year = year;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getOdo() {
        return odo;
    }

    public void setOdo(String odo) {
        this.odo = odo;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public String getEngine() {
        return engine;
    }

    public void setEngine(String engine) {
        this.engine = engine;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getPosted_date() {
        return posted_date;
    }

    public void setPosted_date(Date posted_date) {
        this.posted_date = posted_date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
