package com.carwashes.kuzovatov.model;

import java.text.SimpleDateFormat;
import java.util.List;

public class CarWash extends NamedEntity {
    private String address;
    private String description;
    private String phone;
    private int boxCount;
    private float latitude;
    private float longtitude;
    private SimpleDateFormat openTime;
    private SimpleDateFormat closeTime;
    private List<Service> services;
    private List<Box> boxes;
    private Deleted deleted;
    private int isDeleted;
    private User user;

    public CarWash() {
    }

    public CarWash(int id, String description, float latitude, float longtitude, int isDeleted, List<Box> boxes, List<Service> services, User user, Deleted deleted, String name, String address, String phone, int boxCount, SimpleDateFormat openTime, SimpleDateFormat closeTime) {
        super(id, name);
        this.address = address;
        this.phone = phone;
        this.boxCount = boxCount;
        this.openTime = openTime;
        this.closeTime = closeTime;
        this.services = services;
        this.boxes = boxes;
        this.deleted = deleted;
        this.user = user;
        this.latitude = latitude;
        this.longtitude = longtitude;
        this.isDeleted = isDeleted;
        this.description = description;
    }

    public void setIsDeleted(int isDeleted) {
        this.isDeleted = isDeleted;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getLatitude() {
        return latitude;
    }

    public void setLatitude(float latitude) {
        this.latitude = latitude;
    }

    public float getLongtitude() {
        return longtitude;
    }

    public void setLongtitude(float longtitude) {
        this.longtitude = longtitude;
    }

    public void setDeleted(Deleted deleted) {
        this.deleted = deleted;
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

    public Deleted getDeleted() {
        return deleted;
    }

    public int getIsDeleted() {
        return isDeleted;
    }

    private enum Deleted{YES,NO}
}
