package com.carwashes.kuzovatov.model;

public class Client extends BaseEntity {
    private String carNumber;
    private String carModel;
    private String phone;

    public Client() {
    }

    public Client(int id, String phone, String carNumber, String carModel) {
        super(id);
        this.carNumber = carNumber;
        this.carModel = carModel;
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCarNumber() {
        return carNumber;
    }

    public void setCarNumber(String carNumber) {
        this.carNumber = carNumber;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }
}
