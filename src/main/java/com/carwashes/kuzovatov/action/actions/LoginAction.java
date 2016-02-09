package com.carwashes.kuzovatov.action.actions;

import com.carwashes.kuzovatov.action.View;
import com.carwashes.kuzovatov.action.Action;
import com.carwashes.kuzovatov.dao.JdbcDaoFactory;
import com.carwashes.kuzovatov.dao.ServiceDao;
import com.carwashes.kuzovatov.dao.UserDao;
import com.carwashes.kuzovatov.model.Service;
import com.carwashes.kuzovatov.model.User;
import com.carwashes.kuzovatov.servlet.Controller;
import org.apache.log4j.Logger;
import org.boon.Boon;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.List;

public class LoginAction implements Action {
    private static final Logger log = Logger.getLogger(LoginAction.class);
    List<User> userList;
    List<Service> serviceList;
    private JdbcDaoFactory jdbcDaoFactory = Controller.getJdbcDaoFactory();
    UserDao userDao = (UserDao) jdbcDaoFactory.getDao(UserDao.class, jdbcDaoFactory);
    ServiceDao serviceDao = (ServiceDao) jdbcDaoFactory.getDao(ServiceDao.class, jdbcDaoFactory);

    @Override
    public View execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        View view = new View();
        HttpSession session = request.getSession(true);
        String userName = request.getParameter("txtUserName");
        String password = request.getParameter("txtPassword");
        User user = userDao.findByLogin(userName);
        if (password.equals(user.getPassword())) {
            session.setAttribute("account", user);
            request.setAttribute("account", user);
            if (user.getRole().getName().equals("administrator")) {
                serviceList = serviceDao.findAll();
                session.setAttribute("serviceList", Boon.toJson(serviceList));
                request.setAttribute("serviceList", Boon.toJson(serviceList));
                view.setPath("adminPage.jsp");
                view.setRedirect(true);
                return view;
            }
            else{
                serviceList = serviceDao.findAll();
                session.setAttribute("serviceList", Boon.toJson(serviceList));
                request.setAttribute("serviceList", Boon.toJson(serviceList));
                view.setPath("clientPage.jsp");
                view.setRedirect(true);
                return view;
            }
        } else {
            String passwordIncorrect = "";
            request.setAttribute("passwordIncorrect", passwordIncorrect);
            session.setAttribute("passwordIncorrect", passwordIncorrect);
            String userNameIncorrect = "";
            request.setAttribute("userNameIncorrect", userNameIncorrect);
            session.setAttribute("userNameIncorrect", userNameIncorrect);
            if(!userName.equals(user.getLogin())){
                userNameIncorrect = "Invalid username was entered. Check it and try again!.";
                request.setAttribute("userNameIncorrect", userNameIncorrect);
                session.setAttribute("userNameIncorrect", userNameIncorrect);
            }else{
                passwordIncorrect = "Password incorrect, check it and try again, if its repeat than contact with administrator!";
                request.setAttribute("passwordIncorrect", passwordIncorrect);
                session.setAttribute("passwordIncorrect", passwordIncorrect);
            }
            view.setPath("errorCredentials.jsp");
            view.setRedirect(true);
            return view;
        }
    }
}
