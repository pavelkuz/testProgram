package com.carwashes.kuzovatov.action;

import com.mysql.cj.jdbc.MysqlDataSource;

import java.sql.Connection;
import java.sql.SQLException;

public class JDBConnector {

    public static Connection getConnection() throws SQLException{
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setUser("root");
        dataSource.setPassword("Ok123zxc123Ok");
        dataSource.setServerName("localhost:3306");
        try {
            return dataSource.getConnection();
        } catch (SQLException e) {
            throw new SQLException();
        }
    }
}
