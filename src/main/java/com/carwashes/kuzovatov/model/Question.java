package com.carwashes.kuzovatov.model;

import java.util.List;

public class Question extends NamedEntity {
    private int answerId;
    private List<Answer> answers;
    private boolean isAnswered;
    private int answeredId;

    public Question() {
    }

    public Question(int id, String name, int answerId, List<Answer> answers) {
        super(id, name);
        this.answerId = answerId;
        this.answers = answers;
    }

    public Question(int id, String name, int answerId, List<Answer> answers, boolean isAnswered, int answeredId) {
        super(id, name);
        this.answerId = answerId;
        this.answers = answers;
        this.isAnswered = isAnswered;
        this.answeredId = answeredId;
    }

    public int getAnswerId() {
        return answerId;
    }

    public void setAnswerId(int answerId) {
        this.answerId = answerId;
    }

    public List<Answer> getAnswers() {
        return answers;
    }

    public void setAnswers(List<Answer> answers) {
        this.answers = answers;
    }

    public boolean isAnswered() {
        return isAnswered;
    }

    public void setAnswered(boolean answered) {
        isAnswered = answered;
    }

    public int getAnsweredId() {
        return answeredId;
    }

    public void setAnsweredId(int answeredId) {
        this.answeredId = answeredId;
    }
}
