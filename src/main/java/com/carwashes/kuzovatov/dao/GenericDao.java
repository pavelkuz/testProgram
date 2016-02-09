package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.NamedEntity;

import java.sql.Connection;
import java.util.List;
import java.util.UUID;

public interface GenericDao<T extends NamedEntity> {
        T findById(UUID id);

        List<T> findAll();

        void update(T t);

        void save(T t);

        void transactionalSave(T t, Connection connection);

        boolean remove(T t);

        boolean removeById(UUID id);
}
