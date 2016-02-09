package com.carwashes.kuzovatov.action;

import org.apache.log4j.Logger;
import com.carwashes.kuzovatov.util.ActionFinder;
import com.carwashes.kuzovatov.util.PropertyManager;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

public class ActionFactory {
    private static final Logger log = Logger.getLogger(ActionFactory.class);
    private Map<String, Action> actions = new HashMap<>();

    public ActionFactory() {
        PropertyManager propertyManager = PropertyManager.getInstance();
        propertyManager.configure("actions.properties");
        actions = ActionFinder.getActionMap(propertyManager.getProperty("actions.path"));//"com.carwashes.kuzovatov.action.actions"
        log.info("Map of actions was created successfully.");
    }

    public Action getAction(HttpServletRequest request) {
        String action = request.getParameter("action");
        return actions.get(action);
    }
}
