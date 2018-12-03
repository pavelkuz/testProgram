package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.CarWash;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class CarWashDao extends AbstractDao implements GenericDao<CarWash> {

    @Override
    public CarWash findById(UUID id) {
        return null;
    }

    @Override
    public List<CarWash> findAll() {
        List<CarWash> carWashList = new ArrayList<>();
        Connection connection = super.getFactory().getConnection();
        String query = "SELECT * FROM carwashes.carwashes;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                CarWash carWash = new CarWash();
                carWash.setId(rs.getInt("id"));
                carWash.setName(rs.getString("name"));
                carWash.setDescription(rs.getString("description"));
                carWash.setLatitude(rs.getFloat("latitude"));
                carWash.setLongtitude(rs.getFloat("longtitude"));
                carWash.setAddress(rs.getString("address"));
                carWash.setIsDeleted(rs.getInt("is_deleted"));
                carWashList.add(carWash);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        super.getFactory().freeConnection(connection);
        return carWashList;
    }

    @Override
    public void update(CarWash carWash) {

    }

    @Override
    public void save(CarWash carWash) {

    }

    @Override
    public void transactionalSave(CarWash carWash, Connection connection) {

    }

    @Override
    public boolean remove(CarWash carWash) {
        return false;
    }

    @Override
    public boolean removeById(UUID id) {
        return false;
    }
}
