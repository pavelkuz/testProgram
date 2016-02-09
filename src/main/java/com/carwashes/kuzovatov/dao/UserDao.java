package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.User;

import java.sql.Connection;
import java.util.List;
import java.util.UUID;

public class UserDao extends AbstractDao implements GenericDao<User> {
    @Override
    public User findById(UUID id) {
        return null;
    }

    public User findByLogin(String login) {
        return null;
    }

    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public void update(User user) {

    }

    @Override
    public void save(User user) {

    }

    @Override
    public void transactionalSave(User user, Connection connection) {

    }

    @Override
    public boolean remove(User user) {
        return false;
    }

    @Override
    public boolean removeById(UUID id) {
        return false;
    }
}
