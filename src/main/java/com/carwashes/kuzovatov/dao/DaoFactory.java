package com.carwashes.kuzovatov.dao;

import java.sql.Connection;

public interface DaoFactory<T extends AbstractDao> {
    Connection getConnection();

    void freeConnection(Connection connection);

    T getDao(Class clazz);
}
