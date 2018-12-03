package com.carwashes.kuzovatov.action.actions;

import com.carwashes.kuzovatov.action.Action;
import com.carwashes.kuzovatov.action.View;
import com.carwashes.kuzovatov.dao.*;
import com.carwashes.kuzovatov.model.Answer;
import com.carwashes.kuzovatov.model.Question;
import com.carwashes.kuzovatov.model.QuestionAnswer;
import com.carwashes.kuzovatov.servlet.Controller;
import org.apache.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

public class TestAnswerAction implements Action {
    private static final Logger log = Logger.getLogger(TestAnswerAction.class);
    private static final String SIZE = "size";
    private static final String NOT_ANSWERED = "not_answered";
    private static final String CORRECT = "correct";
    private static final String INCORRECT = "incorrect";
    private static final String RESULT = "result";
    private static final String QUESTION = "question";
    private static final String QUESTION_ANSWER = "question_answer";
    private static final String QUESTIONS = "questions";
    private static final String QUESTION_NUMBER = "question_number";

    @Override
    public View execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        View view = new View();
        HttpSession session = request.getSession(true);
        int questionNumber = (int) session.getAttribute(QUESTION_NUMBER);
        log.info(QUESTION_NUMBER + ": " + questionNumber);
        if (questionNumber < 10) {
            int result = (int) session.getAttribute(RESULT);
            log.info(RESULT + ": " + result);
            int currentAnswer = 0;
            if (request.getParameter("answer") != null) {
                currentAnswer = Integer.parseInt(request.getParameter("answer"));
            }
            log.info(QUESTION_ANSWER + ": " + currentAnswer);
            Question question = (Question) session.getAttribute(QUESTION);
            log.info(QUESTION + ": " + question.getName());
            if (currentAnswer == question.getAnswerId()){
                int correct = (int) session.getAttribute(CORRECT);
                session.setAttribute(RESULT, result + 1);
                session.setAttribute(CORRECT, correct + 1);
            } else if (currentAnswer == 0){
                int notAnswered = (int) session.getAttribute(NOT_ANSWERED);
                session.setAttribute(NOT_ANSWERED, notAnswered + 1);
                session.setAttribute(RESULT, result);
            } else {
                int incorrect = (int) session.getAttribute(INCORRECT);
                session.setAttribute(INCORRECT, incorrect + 1);
                session.setAttribute(RESULT, result - 1);
            }
            List<Question> questions = (List<Question>) session.getAttribute(QUESTIONS);
            questionNumber = questionNumber + 1;
            if (questionNumber == 10){
                session.setAttribute(SIZE, questions.size());
                view.setPath("resultPage.jsp");
                view.setRedirect(true);
                return view;
            }
            session.setAttribute(QUESTION, questions.get(questionNumber));
            session.setAttribute(QUESTION_NUMBER, questionNumber);
        }
        view.setPath("testPage.jsp");
        view.setRedirect(true);
        return view;
    }
}
