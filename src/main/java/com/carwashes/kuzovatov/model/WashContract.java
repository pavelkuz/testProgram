package com.carwashes.kuzovatov.model;

import java.text.SimpleDateFormat;
import java.util.List;

public class WashContract extends NamedEntity {
    private Client client;
    private CarWash carWash;
    private List<Service> services;
    private boolean isDone;
    private SimpleDateFormat timeRemaining;

    public WashContract() {
    }

    public WashContract(String id, String name, List<Service> services, Client client, CarWash carWash, boolean isDone, SimpleDateFormat timeRemaining) {
        super(id, name);
        this.client = client;
        this.carWash = carWash;
        this.isDone = isDone;
        this.timeRemaining = timeRemaining;
        this.services = services;
    }

    public List<Service> getServices() {
        return services;
    }

    public void setServices(List<Service> services) {
        this.services = services;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public CarWash getCarWash() {
        return carWash;
    }

    public void setCarWash(CarWash carWash) {
        this.carWash = carWash;
    }

    public boolean isDone() {
        return isDone;
    }

    public void setIsDone(boolean isDone) {
        this.isDone = isDone;
    }

    public SimpleDateFormat getTimeRemaining() {
        return timeRemaining;
    }

    public void setTimeRemaining(SimpleDateFormat timeRemaining) {
        this.timeRemaining = timeRemaining;
    }
}
