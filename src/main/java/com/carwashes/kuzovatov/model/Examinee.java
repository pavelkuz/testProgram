package com.carwashes.kuzovatov.model;

public class Examinee extends NamedEntity {
    private String group;

    public Examinee() {
    }

    public Examinee(int id, String name, String group) {
        super(id, name);
        this.group = group;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }
}
