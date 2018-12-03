package com.carwashes.kuzovatov.dao;

import com.carwashes.kuzovatov.model.Answer;
import com.carwashes.kuzovatov.model.QuestionAnswer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

public class AnswerDao extends AbstractDao implements GenericDao<Answer> {

    public Answer findById(int id) {
        Answer answer = null;
        Connection connection = super.getFactory().getConnection();
        String selectSQL = "SELECT * FROM test.answers WHERE answers.id = ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(selectSQL);
            preparedStatement.setInt(1, id);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                answer = new Answer();
                answer.setId(rs.getInt("id"));
                answer.setName(rs.getString("answer"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            super.getFactory().freeConnection(connection);
        }
        return answer;
    }

    public Answer findById(int answerId, int questionId) {
        Answer answer = null;
        Connection connection = super.getFactory().getConnection();
        String selectSQL = "SELECT * FROM test.answers WHERE answers.id = ?;";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(selectSQL);
            preparedStatement.setInt(1, answerId);
            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                answer = new Answer();
                answer.setId(rs.getInt("id"));
                answer.setName(rs.getString("answer"));
                answer.setQuestionId(questionId);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            super.getFactory().freeConnection(connection);
        }
        return answer;
    }

    @Override
    public Answer findById(UUID id) {
        return null;
    }

    public List<Answer> findAllByQuestionId(int id) {
        List<Answer> answers = new ArrayList<>();
        List<QuestionAnswer> questionAnswers = new ArrayList<>();
        Connection connection = super.getFactory().getConnection();
        String questionAnswerQuery = "SELECT * FROM test.question_answer_list WHERE question_answer_list.question_id = ?;";
        try {
            PreparedStatement ps = connection.prepareStatement(questionAnswerQuery);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                QuestionAnswer qa = new QuestionAnswer();
                qa.setQuestionId(rs.getInt("question_id"));
                qa.setAnswerId(rs.getInt("answer_id"));
                questionAnswers.add(qa);
            }
            for (QuestionAnswer questionAnswer : questionAnswers){
                //answers.add(findById(questionAnswer.getAnswerId()));
                answers.add(findById(questionAnswer.getAnswerId()));
            }
            Collections.shuffle(answers);
            Collections.shuffle(answers);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            super.getFactory().freeConnection(connection);
        }
        return answers;
    }

    @Override
    public List<Answer> findAll() {
        return null;
    }

    @Override
    public void update(Answer answer) {

    }

    @Override
    public void save(Answer answer) {

    }

    @Override
    public void transactionalSave(Answer answer, Connection connection) {

    }

    @Override
    public boolean remove(Answer answer) {
        return false;
    }

    @Override
    public boolean removeById(UUID id) {
        return false;
    }
}
