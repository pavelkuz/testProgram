package com.carwashes.kuzovatov.model;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;

public class Service extends NamedEntity {
    private BigDecimal price;
    private SimpleDateFormat duration;
    private CarWash carWash;

    public Service() {
    }

    public Service(int id, CarWash carWash, String name, BigDecimal price, SimpleDateFormat duration) {
        super(id, name);
        this.price = price;
        this.duration = duration;
        this.carWash = carWash;
    }

    public CarWash getCarWash() {
        return carWash;
    }

    public void setCarWash(CarWash carWash) {
        this.carWash = carWash;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public SimpleDateFormat getDuration() {
        return duration;
    }

    public void setDuration(SimpleDateFormat duration) {
        this.duration = duration;
    }
}
