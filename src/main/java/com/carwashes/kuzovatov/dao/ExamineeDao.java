package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.CarWash;
import com.carwashes.kuzovatov.model.Examinee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class ExamineeDao extends AbstractDao implements GenericDao<Examinee> {

    @Override
    public Examinee findById(UUID id) {
        return null;
    }

    @Override
    public List<Examinee> findAll() {
        List<Examinee> examinees = new ArrayList<>();
        Connection connection = super.getFactory().getConnection();
        String query = "SELECT * FROM test.examinee;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Examinee examinee = new Examinee();
                examinee.setId(rs.getInt("id"));
                examinee.setName(rs.getString("fio"));
                examinee.setGroup(rs.getString("group"));
                examinees.add(examinee);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            super.getFactory().freeConnection(connection);
        }
        return examinees;
    }

    @Override
    public void update(Examinee examinee) {

    }

    @Override
    public void save(Examinee examinee) {
        Connection connection = getFactory().getConnection();
        String query = "INSERT INTO test.examinee (fio,class) VALUES (?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, examinee.getName());
            ps.setString(2, examinee.getGroup());
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            super.getFactory().freeConnection(connection);
        }
    }

    @Override
    public void transactionalSave(Examinee examinee, Connection connection) {

    }

    @Override
    public boolean remove(Examinee examinee) {
        return false;
    }

    @Override
    public boolean removeById(UUID id) {
        return false;
    }
}
