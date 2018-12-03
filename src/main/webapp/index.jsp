<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<%--<%@include file="navbar.jspf" %>--%>
<%--<%@include file="leftAdmin.jspf" %>--%>
<head>
    <meta charset="UTF-8">
    <title>Start</title>
    <link rel="stylesheet" type="text/css" href="styles/jquery.dataTables.min.css">
    <script type="text/javascript" charset="utf8" src="scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" charset="utf8" src="scripts/custom.js"></script>
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <%--<link rel="stylesheet" href="styles/bootstrap-theme.min.css">--%>
    <link rel="stylesheet" href="styles/metro-bootstrap.min.css">
    <script src="scripts/bootstrap.min.js"></script>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
        form {border: 3px solid #f1f1f1;}

        input[type=text] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        button {
            background-color: #2aabd2;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            opacity: 0.8;
        }

        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        .imgcontainer {
            text-align: center;
            margin: 24px 0 12px 0;
        }

        img.avatar {
            width: 40%;
            border-radius: 50%;
        }

        .container {
            padding: 16px;
        }

        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
            .cancelbtn {
                width: 100%;
            }
        }
        #myContent {
            /*margin-top: -9em; !*set to a negative number 1/2 of your height*!*/
            /*margin-left: -15em; !*set to a negative number 1/2 of your width*!*/
            /*background-color: #ffffff;*/
            margin: 15%;
            border: solid 5px #2aabd2;
            border-radius: 4px;
        }
        /*#loginForm {*/
            /*position: fixed;*/
            /*top: 50%;*/
            /*left: 50%;*/
            /*width: 30em;*/
            /*height: 18em;*/
            /*margin-top: -9em; !*set to a negative number 1/2 of your height*!*/
            /*margin-left: -15em; !*set to a negative number 1/2 of your width*!*/
            /*!*background-color: #ffffff;*!*/
            /*!*border: 10px #dddddd;*!*/
            /*!*border-radius: 4px 4px 0 0;*!*/
        /*}*/
        /*#languageForm {*/
            /*position: fixed;*/
            /*top: 50%;*/
            /*left: 50%;*/
            /*width: 30em;*/
            /*height: 18em;*/
            /*margin-top: -9em; !*set to a negative number 1/2 of your height*!*/
            /*margin-left: -15em;*/
        /*}*/
        /*body {*/
        /*background-image: url("images/sportlogo.jpg");*/
        /*}*/
    </style>
</head>
<body>
<%--<c:set var="language"--%>
       <%--value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"--%>
       <%--scope="session"/>--%>
<%--<fmt:setLocale value="${language}"/>--%>
<%--<fmt:setBundle basename="i18n"/>--%>
<%--<form id="languageForm">--%>
    <%--<select id="language" name="language" onchange="submit()">--%>
        <%--<option value="kk" ${language == 'kk' ? 'selected' : ''}>Қазақ</option>--%>
        <%--<option value="ru" ${language == 'ru' ? 'selected' : ''}>Русский</option>--%>
        <%--<option value="en" ${language == 'en' ? 'selected' : ''}>English</option>--%>
    <%--</select>--%>
<%--</form>--%>
<%--<fmt:message key="group"/>--%>
<div id="myContent">
<form name="login" method="post" action="${pageContext.request.contextPath}/Controller?action=LoginAction"
      class="bs-example bs-example-form" data-example-id="simple-input-groups">
    <div class="container">
        <label for="txtUserName"><b>ФИО</b></label>
        <input type="text" id="txtUserName" placeholder="Введите ФИО" name="txtUserName" required>

        <label for="txtGroup"><b>КЛАСС</b></label>
        <input type="text" id="txtGroup" placeholder="Введите класс" name="txtGroup" required>

        <button type="submit">Начать тестирование</button>
        <%--<br>--%>
        <%--<button type="submit"><fmt:message key="enter.teacher"/></button>--%>
    </div>

    <%--<div id="loginForm">--%>
        <%--<input type="hidden" name="pageName" value="login"/>--%>

        <%--<div class="input-group">--%>
            <%--<span class="input-group-addon" id="fio"><fmt:message key="fio"/></span><input--%>
                <%--style="width: max-content; " type="text"--%>
                <%--class="form-control" placeholder="<fmt:message key="fio"/>" name="txtUserName" aria-describedby="fio">--%>
        <%--</div>--%>
        <%--<br>--%>

        <%--<div class="input-group">--%>
            <%--<span class="input-group-addon" id="group"><fmt:message key="group"/></span><input--%>
                <%--style="width: max-content; " type="text"--%>
                <%--class="form-control" placeholder="<fmt:message key="group"/>" name="txtGroup" aria-describedby="group">--%>
        <%--</div>--%>
        <%--<br>--%>

        <%--<div class="input-group">--%>
            <%--<button class="btn btn-primary" type="submit"><fmt:message key="login"/></button>--%>
        <%--</div>--%>
    <%--</div>--%>
</form>
</div>
</body>
</html>