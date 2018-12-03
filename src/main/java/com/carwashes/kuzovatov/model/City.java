package com.carwashes.kuzovatov.model;

public class City extends NamedEntity {
    private double latitude;
    private double longtitude;
    private int isDeleted;

    public City() {
    }

    public City(int id, String name, double latitude, double longtitude, int isDeleted) {
        super(id, name);
        this.latitude = latitude;
        this.longtitude = longtitude;
        this.isDeleted = isDeleted;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongtitude() {
        return longtitude;
    }

    public void setLongtitude(double longtitude) {
        this.longtitude = longtitude;
    }

    public int getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(int isDeleted) {
        this.isDeleted = isDeleted;
    }
}
