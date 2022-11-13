package com.okxe.beans;

public class Brand {
    private int brand_id;
    private String brandname;
    private String description;

    public Brand() {
    }

    public Brand(int brand_id, String brandname, String description) {
        this.brand_id = brand_id;
        this.brandname = brandname;
        this.description = description;
    }

    public int getBrand_id() {
        return brand_id;
    }

    public void setBrand_id(int brand_id) {
        this.brand_id = brand_id;
    }

    public String getBrandname() {
        return brandname;
    }

    public void setBrandname(String brandname) {
        this.brandname = brandname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
