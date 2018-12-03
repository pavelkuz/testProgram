package com.carwashes.kuzovatov.model;

public class QuestionAnswer extends NamedEntity {
    private int questionId;
    private int answerId;

    public QuestionAnswer() {
    }

    public QuestionAnswer(int id, String name, int questionId, int answerId) {
        super(id, name);
        this.questionId = questionId;
        this.answerId = answerId;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }

    public int getAnswerId() {
        return answerId;
    }

    public void setAnswerId(int answerId) {
        this.answerId = answerId;
    }
}
