package com.carwashes.kuzovatov.model;

import org.boon.Str;

public class User extends NamedEntity {
    private String login;
    private String password;
    private UserRole role;
    private Deleted isDeleted;

    public User() {
    }

    public User(String id, String name, String login, String password, UserRole role, Deleted isDeleted) {
        super(id, name);
        this.password = password;
        this.role = role;
        this.isDeleted = isDeleted;
        this.login = login;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setIsDeleted(Deleted isDeleted) {
        this.isDeleted = isDeleted;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public UserRole getRole() {
        return role;
    }

    public void setRole(UserRole role) {
        this.role = role;
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
