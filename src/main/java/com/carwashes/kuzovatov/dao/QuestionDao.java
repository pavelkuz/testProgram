package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.Question;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class QuestionDao extends AbstractDao implements GenericDao<Question> {

    @Override
    public Question findById(UUID id) {
        return null;
    }

    @Override
    public List<Question> findAll() {
        List<Question> questions = new ArrayList<>();
        Connection connection = super.getFactory().getConnection();
        String query = "SELECT * FROM test.questions;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                Question question = new Question();
                question.setId(rs.getInt("id"));
                question.setAnswerId(rs.getInt("answer_id"));
                question.setName(rs.getString("question"));
                questions.add(question);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        super.getFactory().freeConnection(connection);
        return questions;
    }

    @Override
    public void update(Question question) {

    }

    @Override
    public void save(Question question) {

    }

    @Override
    public void transactionalSave(Question question, Connection connection) {

    }

    @Override
    public boolean remove(Question question) {
        return false;
    }

    @Override
    public boolean removeById(UUID id) {
        return false;
    }
}
