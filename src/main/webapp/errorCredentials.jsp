<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n"/>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login page</title>
    <link rel="stylesheet" type="text/css" href="styles/jquery.dataTables.min.css">
    <script type="text/javascript" charset="utf8" src="scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" charset="utf8" src="scripts/custom.js"></script>
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <link rel="stylesheet" href="styles/bootstrap-theme.min.css">
    <script src="scripts/bootstrap.min.js"></script>
    <style>
        #loginForm {
            position: fixed;
            top: 50%;
            left: 50%;
            width: 500px;
            height: 250em;
            margin-top: -9em; /*set to a negative number 1/2 of your height*/
            margin-left: -15em; /*set to a negative number 1/2 of your width*/
            /*background-color: #ffffff;*/
            /*border: 10px #dddddd;*/
            /*border-radius: 4px 4px 0 0;*/
        }
    </style>
</head>
<body>
<form name="login" method="post" action="${pageContext.request.contextPath}/Controller?action=LoginAction"
      class="bs-example bs-example-form" data-example-id="simple-input-groups">
    <div id="loginForm">
        <jsp:useBean id="passwordIncorrect" type="java.lang.String" scope="session"/>
        <jsp:useBean id="userNameIncorrect" type="java.lang.String" scope="session"/>
        <input type="hidden" name="pageName" value="login"/>

        <div style="width: 300px;">
            <div class="alert alert-danger" role="alert">${passwordIncorrect} ${userNameIncorrect}</div>
        </div>
        <div class="input-group">
            <span class="input-group-addon" id="basic-addon1"><fmt:message key="login.number"/></span><input
                style="width: 130px; border-radius: 5%" type="text" class="form-control" placeholder="Username"
                name="txtUserName" aria-describedby="basic-addon1">
        </div>
        <br>

        <div class="input-group">
            <input style="width: 300px; border-radius: 5%" type="password" class="form-control" placeholder="Password"
                   name="txtPassword">
        </div>
        <br>

        <div class="input-group">
            <button class="btn btn-primary" type="submit"><fmt:message key="login"/></button>
        </div>
    </div>
</form>
</body>
</html>
