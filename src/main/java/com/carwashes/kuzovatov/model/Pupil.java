package com.carwashes.kuzovatov.model;

public class Pupil extends NamedEntity {
    private String clazz;

    public Pupil() {
    }

    public Pupil(int id, String name, String clazz) {
        super(id, name);
        this.clazz = clazz;
    }

    public String getClazz() {
        return clazz;
    }

    public void setClazz(String clazz) {
        this.clazz = clazz;
    }
}
