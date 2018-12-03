package com.carwashes.kuzovatov.model;

public class Pretender extends NamedEntity {
    private String phone;
    private String address;
    private String password;
    private String email;

    public Pretender() {
    }

    public Pretender(int id, String name, String phone, String address, String email, String password) {
        super(id, name);
        this.phone = phone;
        this.address = address;
        this.password = password;
        this.email = email;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
