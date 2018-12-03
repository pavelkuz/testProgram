package com.carwashes.kuzovatov.model;

public class Administrator extends NamedEntity {
    private String login;
    private String password;
    private Deleted isDeleted;

    public Administrator() {
    }

    public Administrator(int id, String name, String login, String password, Deleted isDeleted) {
        super(id, name);
        this.password = password;
        this.isDeleted = isDeleted;
        this.login = login;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
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

    public String getPassword() {
        return password;
    }

    public void setIsDeleted(Deleted isDeleted) {
        this.isDeleted = isDeleted;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    private enum Deleted{YES,NO}
}
