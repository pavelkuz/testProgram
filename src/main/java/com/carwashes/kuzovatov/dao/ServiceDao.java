package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.Service;

import java.sql.Connection;
import java.util.List;
import java.util.UUID;

/**
 * Created by Pavel on 07.10.2015.
 */
public class ServiceDao extends AbstractDao implements GenericDao<Service> {
    @Override
    public Service findById(UUID id) {
        return null;
    }

    @Override
    public List<Service> findAll() {
        return null;
    }

    @Override
    public void update(Service service) {

    }

    @Override
    public void save(Service service) {

    }

    @Override
    public void transactionalSave(Service service, Connection connection) {

    }

    @Override
    public boolean remove(Service service) {
        return false;
    }

    @Override
    public boolean removeById(UUID id) {
        return false;
    }
}
