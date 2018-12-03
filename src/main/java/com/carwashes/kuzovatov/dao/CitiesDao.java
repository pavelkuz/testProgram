package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.City;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class CitiesDao extends AbstractDao implements GenericDao<City> {
    @Override
    public City findById(UUID id) {
        return null;
    }

    @Override
    public List<City> findAll() {
        List<City> cityList = new ArrayList<>();
        Connection connection = super.getFactory().getConnection();
        String query = "SELECT * FROM carwashes.cities;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                City city = new City();
                city.setId(rs.getInt("id"));
                city.setName(rs.getString("name"));
                city.setLatitude(rs.getFloat("latitude"));
                city.setLongtitude(rs.getFloat("longtitude"));
                city.setIsDeleted(rs.getInt("is_deleted"));
                cityList.add(city);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        super.getFactory().freeConnection(connection);
        return cityList;
    }

    @Override
    public void update(City city) {

    }

    @Override
    public void save(City city) {

    }

    @Override
    public void transactionalSave(City city, Connection connection) {

    }

    @Override
    public boolean remove(City city) {
        return false;
    }

    @Override
    public boolean removeById(UUID id) {
        return false;
    }
}
