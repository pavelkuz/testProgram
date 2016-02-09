package com.carwashes.kuzovatov.action.actions;

import com.carwashes.kuzovatov.action.Action;
import com.carwashes.kuzovatov.action.View;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegistrationAction implements Action {
    @Override
    public View execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
        View view = new View("homePage.jsp",true);
        return view;
    }
}
