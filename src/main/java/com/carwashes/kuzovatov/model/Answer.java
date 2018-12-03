package com.carwashes.kuzovatov.model;

public class Answer extends NamedEntity {
    private int questionId;

    public Answer() {
    }

    public Answer(int id, String name, int questionId) {
        super(id, name);
        this.questionId = questionId;
    }

    public int getQuestionId() {
        return questionId;
    }

    public void setQuestionId(int questionId) {
        this.questionId = questionId;
    }
}
