package com.test.beans;

public class Test {
    private String name;
    private Double originPrice, sale, newPRice;

    public Test(String name, Double originPrice, Double sale) {
        this.name = name;
        this.originPrice = originPrice;
        this.sale = sale;
        this.newPRice = originPrice*(1-sale);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getOriginPrice() {
        return originPrice;
    }

    public void setOriginPrice(Double originPrice) {
        this.originPrice = originPrice;
    }

    public Double getSale() {
        return sale;
    }

    public void setSale(Double sale) {
        this.sale = sale;
    }

    public Double getNewPRice() {
        return newPRice;
    }

    public void setNewPRice(Double newPRice) {
        this.newPRice = newPRice;
    }
}
