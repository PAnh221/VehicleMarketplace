package com.okxe.beans;

public class User {
    private int user_id;
    private String username;
    private String password;
    private String phone;
    private String name;
    private String location;
    private String image;
    private String citizen_id;
    private int user_type;

    public User() {
    }

    public User(int user_id, String username, String password, String phone, String name, String location, String image, String citizen_id, int user_type) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.phone = phone;
        this.name = name;
        this.location = location;
        this.image = image;
        this.citizen_id = citizen_id;
        this.user_type = user_type;
    }

    public User(String username, String password, String name, String location, String citizen_id, int user_type) {
        this.username = username;
        this.password = password;
        this.name = name;
        this.location = location;
        this.citizen_id = citizen_id;
        this.user_type = user_type;
    }
    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCitizen_id() {
        return citizen_id;
    }

    public void setCitizen_id(String citizen_id) {
        this.citizen_id = citizen_id;
    }

    public int getUser_type() {
        return user_type;
    }

    public void setUser_type(int user_type) {
        this.user_type = user_type;
    }
}
