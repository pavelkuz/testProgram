package com.carwashes.kuzovatov.action.actions;

import com.carwashes.kuzovatov.action.View;
import com.carwashes.kuzovatov.action.Action;
import com.carwashes.kuzovatov.dao.*;
import com.carwashes.kuzovatov.model.*;
import com.carwashes.kuzovatov.servlet.Controller;
import org.apache.log4j.Logger;
import org.boon.Boon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.List;

public class LoginAction implements Action {
    private static final Logger log = Logger.getLogger(LoginAction.class);
    private static final String SIZE = "size";
    private static final String NOT_ANSWERED = "not_answered";
    private static final String CORRECT = "correct";
    private static final String INCORRECT = "incorrect";
    private static final String PUPIL = "pupil";
    private static final String RESULT = "result";
    private static final String QUESTION = "question";
    private static final String QUESTIONS = "questions";
    private static final String QUESTION_NUMBER = "question_number";
    private JdbcDaoFactory jdbcDaoFactory = Controller.getJdbcDaoFactory();
    private ExamineeDao examineeDao = (ExamineeDao) jdbcDaoFactory.getDao(ExamineeDao.class);
    private QuestionDao questionDao = (QuestionDao) jdbcDaoFactory.getDao(QuestionDao.class);
    private AnswerDao answerDao = (AnswerDao) jdbcDaoFactory.getDao(AnswerDao.class);

    @Override
    public View execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        View view = new View();
        HttpSession session = request.getSession(true);
        String txtUserName = request.getParameter("txtUserName");
        String txtGroup = request.getParameter("txtGroup");
        Examinee examinee = new Examinee();
        examinee.setName(txtUserName);
        examinee.setGroup(txtGroup);
        examineeDao.save(examinee);
        session.setAttribute(PUPIL, examinee);
        prepareQuestions(session);
        session.setAttribute(NOT_ANSWERED, 0);
        session.setAttribute(CORRECT, 0);
        session.setAttribute(INCORRECT, 0);
        view.setPath("testPage.jsp");
        view.setRedirect(true);
        return view;
    }

    private void prepareQuestions(HttpSession session){
        session.setAttribute(QUESTION_NUMBER, 0);
        List<Question> questions = questionDao.findAll();
        for (Question question : questions){
            List<Answer> answers = answerDao.findAllByQuestionId(question.getId());
            Collections.shuffle(answers);
            question.setAnswers(answers);
        }
        log.info("GOT QUESTIONS SIZE: " + questions.size());
        session.setAttribute(SIZE, questions.size());
        session.setAttribute(QUESTIONS, questions);
        session.setAttribute(QUESTION, questions.get(0));
        session.setAttribute(RESULT, 0);
    }
}
