package com.okxe.beans;

import java.util.Date;

public class Order {
    private int order_id;
    private int user_id;
    private int bike_id;
    private Date date;
    private int status;

    private Bike bike;

    public Bike getBike() {
        return bike;
    }

    public void setBike(Bike bike) {
        this.bike = bike;
    }

    public Order() {
    }

    public Order(int user_id, int bike_id, Date date, int status) {
        this.user_id = user_id;
        this.bike_id = bike_id;
        this.date = date;
        this.status = status;
    }

    public Order(int order_id, int user_id, int bike_id, Date date, int status) {
        this.order_id = order_id;
        this.user_id = user_id;
        this.bike_id = bike_id;
        this.date = date;
        this.status = status;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getBike_id() {
        return bike_id;
    }

    public void setBike_id(int bike_id) {
        this.bike_id = bike_id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
