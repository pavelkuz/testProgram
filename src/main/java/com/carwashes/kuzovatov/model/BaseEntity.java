package com.carwashes.kuzovatov.model;

public abstract class BaseEntity {
    private String id;

    public BaseEntity(String id) {
        this.id = id;
    }

    public BaseEntity() {
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
