package com.carwashes.kuzovatov.model;

public class UserRole extends NamedEntity {
    private Deleted isDeleted;

    public UserRole() {
    }

    public UserRole(String id, String name, Deleted isDeleted) {
        super(id, name);
        this.isDeleted = isDeleted;
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

    public void setIsDeleted(Deleted isDeleted) {
        this.isDeleted = isDeleted;
    }

    private enum Deleted{YES,NO}
}
