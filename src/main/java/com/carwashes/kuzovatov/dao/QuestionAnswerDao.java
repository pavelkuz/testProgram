package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.QuestionAnswer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class QuestionAnswerDao extends AbstractDao implements GenericDao<QuestionAnswer> {

    @Override
    public QuestionAnswer findById(UUID id) {
        return null;
    }

    public List<QuestionAnswer> findAllByQuestionId(int id){
        List<QuestionAnswer> questionAnswers = new ArrayList<>();
        Connection connection = super.getFactory().getConnection();
        String query = "SELECT * FROM test.question_answer_list WHERE question_answer_list.question_id=?;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                QuestionAnswer qa = new QuestionAnswer();
                qa.setQuestionId(rs.getInt("question_id"));
                qa.setAnswerId(rs.getInt("answer_id"));
                questionAnswers.add(qa);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            super.getFactory().freeConnection(connection);
        }
        return questionAnswers;
    }

    @Override
    public List<QuestionAnswer> findAll() {
        return null;
    }

    @Override
    public void update(QuestionAnswer questionAnswer) {

    }

    @Override
    public void save(QuestionAnswer questionAnswer) {

    }

    @Override
    public void transactionalSave(QuestionAnswer questionAnswer, Connection connection) {

    }

    @Override
    public boolean remove(QuestionAnswer questionAnswer) {
        return false;
    }

    @Override
    public boolean removeById(UUID id) {
        return false;
    }
}
