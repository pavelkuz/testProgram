<%--
  Created by IntelliJ IDEA.
  User: Pavel
  Date: 04.12.2018
  Time: 1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page import="java.util.List"%>--%>
<%--<%@ page import="com.carwashes.kuzovatov.model.Question" %>--%>
<jsp:useBean id="result" scope="session" type="java.lang.Integer"/>
<jsp:useBean id="correct" scope="session" type="java.lang.Integer"/>
<jsp:useBean id="incorrect" scope="session" type="java.lang.Integer"/>
<jsp:useBean id="size" scope="session" type="java.lang.Integer"/>
<jsp:useBean id="pupil" scope="session" type="com.carwashes.kuzovatov.model.Examinee"/>
<html>
<head>
    <title>Result</title>
    <style>
        .navbar{
            background: #2aabd2;
            color: white;
        }
        #myContent {
            width: 50%;
            margin: 0 auto;
            /*margin-top: -9em; !*set to a negative number 1/2 of your height*!*/
            /*margin-left: -15em; !*set to a negative number 1/2 of your width*!*/
            /*background-color: #ffffff;*/
            border: solid 5px #2aabd2;
            border-radius: 4px;
        }
        .paddinged{
            padding: 30px;
        }
    </style>
</head>
<body>
<div id="myContent">
<div class="navbar">
    <div style="display: block; padding: 30px"><h1>ФИО тестируемого: ${pupil.name}</h1></div>
    <div style="display: block; padding: 30px"><h2>Класс тестируемого: ${pupil.group}</h2></div>
</div>
<br>
<div class="paddinged">
    <div class="paddinged">
        <span>Всего вопросов: ${size}</span>
    </div>
    <div class="paddinged">
        <span>Правильных ответов: ${correct}</span>
    </div>
    <div class="paddinged">
        <span>Неправильных ответов: ${incorrect}</span>
    </div>
    <div class="paddinged">
        <span>Коэффициент качества: ${result}</span>
    </div>
</div>
</div>
</body>
</html>
