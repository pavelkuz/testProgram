package com.carwashes.kuzovatov.model;

import java.text.SimpleDateFormat;
import java.util.List;

public class CarWash extends NamedEntity {
    private String address;
    private String phone;
    private int boxCount;
    private SimpleDateFormat openTime;
    private SimpleDateFormat closeTime;
    private List<Service> services;
    private List<Box> boxes;
    private Deleted isDeleted;
    private User user;

    public CarWash() {
    }

    public CarWash(String id, List<Box> boxes, List<Service> services, User user, Deleted isDeleted, String name, String address, String phone, int boxCount, SimpleDateFormat openTime, SimpleDateFormat closeTime) {
        super(id, name);
        this.address = address;
        this.phone = phone;
        this.boxCount = boxCount;
        this.openTime = openTime;
        this.closeTime = closeTime;
        this.services = services;
        this.boxes = boxes;
        this.isDeleted = isDeleted;
        this.user = user;
    }

    public void setIsDeleted(Deleted isDeleted) {
        this.isDeleted = isDeleted;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Box> getBoxes() {
        return boxes;
    }

    public void setBoxes(List<Box> boxes) {
        this.boxes = boxes;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public List<Service> getServices() {
        return services;
    }

    public void setServices(List<Service> services) {
        this.services = services;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getBoxCount() {
        return boxCount;
    }

    public void setBoxCount(int boxCount) {
        this.boxCount = boxCount;
    }

    public SimpleDateFormat getOpenTime() {
        return openTime;
    }

    public void setOpenTime(SimpleDateFormat openTime) {
        this.openTime = openTime;
    }

    public SimpleDateFormat getCloseTime() {
        return closeTime;
    }

    public void setCloseTime(SimpleDateFormat closeTime) {
        this.closeTime = closeTime;
    }

    public Deleted isDeleted() {
        return isDeleted;
    }

    public boolean getIsDeleted() {
        return isDeleted().equals(Deleted.YES);
    }

    public void setIsDeleted(boolean isDeleted) {
        if (isDeleted)this.isDeleted=Deleted.YES;
        else this.isDeleted=Deleted.NO;
    }

    private enum Deleted{YES,NO}
}
