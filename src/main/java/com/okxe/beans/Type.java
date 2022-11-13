package com.okxe.beans;

public class Type {
    private int type_id;
    private String typename;
    private String description;

    public Type() {
    }

    public Type(int type_id, String typename, String description) {
        this.type_id = type_id;
        this.typename = typename;
        this.description = description;
    }

    public int getType_id() {
        return type_id;
    }

    public void setType_id(int type_id) {
        this.type_id = type_id;
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
