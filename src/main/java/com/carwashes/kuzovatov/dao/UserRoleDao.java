package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.UserRole;

import java.sql.Connection;
import java.util.List;
import java.util.UUID;

public class UserRoleDao extends AbstractDao implements GenericDao<UserRole>{
    @Override
    public UserRole findById(UUID id) {
        return null;
    }

    @Override
    public List<UserRole> findAll() {
        return null;
    }

    @Override
    public void update(UserRole userRole) {

    }

    @Override
    public void save(UserRole userRole) {

    }

    @Override
    public void transactionalSave(UserRole userRole, Connection connection) {

    }

    @Override
    public boolean remove(UserRole userRole) {
        return false;
    }

    @Override
    public boolean removeById(UUID id) {
        return false;
    }
}
