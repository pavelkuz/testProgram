package com.carwashes.kuzovatov.model;

import java.text.SimpleDateFormat;

public class Box extends NamedEntity {
    private boolean isEmpty;
    private SimpleDateFormat timeRemaining;
    private CarWash carWash;
    private int boxNumber;

    public Box() {
    }

    public Box(String id, CarWash carWash, int boxNumber, String name, SimpleDateFormat timeRemaining, boolean isEmpty) {
        super(id, name);
        this.isEmpty = isEmpty;
        this.timeRemaining = timeRemaining;
        this.carWash = carWash;
        this.boxNumber = boxNumber;
    }

    public int getBoxNumber() {
        return boxNumber;
    }

    public void setBoxNumber(int boxNumber) {
        this.boxNumber = boxNumber;
    }

    public SimpleDateFormat getTimeRemaining() {
        return timeRemaining;
    }

    public void setTimeRemaining(SimpleDateFormat timeRemaining) {
        this.timeRemaining = timeRemaining;
    }

    public CarWash getCarWash() {
        return carWash;
    }

    public void setCarWash(CarWash carWash) {
        this.carWash = carWash;
    }

    public boolean isEmpty() {
        return isEmpty;
    }

    public void setIsEmpty(boolean isEmpty) {
        this.isEmpty = isEmpty;
    }
}
