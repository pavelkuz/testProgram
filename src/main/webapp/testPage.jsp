<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@page import="java.util.List"%>--%>
<%--<%@ page import="com.carwashes.kuzovatov.model.Question" %>--%>
<jsp:useBean id="result" scope="session" type="java.lang.Integer"/>
<jsp:useBean id="question_number" scope="session" type="java.lang.Integer"/>
<jsp:useBean id="pupil" scope="session" type="com.carwashes.kuzovatov.model.Examinee"/>
<jsp:useBean id="question" scope="session" type="com.carwashes.kuzovatov.model.Question"/>
<html>
<head>
    <title>Test</title>
    <style>
        .materials{
            margin-top:15px;
            background:#fff;

        }

        .materials .items{
            border:1px solid #dcdcdc;
            padding:0;
            position:relative;
            cursor:default;
        }

        .items .info{
            border-bottom:1px solid #dcdcdc;
            padding:0 10px;
            position:absolute;
            font-size:90%;
            width:100%;
            height:auto;
            line-height:34px;
            left:0;
            top:0;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            margin-bottom:50px;
        }

        .items table p{
            margin:2px 0;
        }
        .items .none{
            display:none;
        }
        .vote_tests{
            margin-top:50px;
        }
        .vote_tests p{
            margin: 5px 0;
        }

        .items .texting{
            max-height:200px;
            overflow:auto;
            background:#f3f3f3;
            padding:10px 15px;
            margin-bottom:10px;
        }

        .items .decision{
            display:none;
            max-height:200px;
            overflow:auto;
            background:#eafae9;
            padding:10px 15px;
            margin-bottom:10px;
        }

        .items .inquiry{
            padding:2px 10px 2px 20px;
        }

        .inquiry img{
            max-width:100%;
        }

        .items .answers{
            padding:10px 10px 10px 15px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }


        .vset{
            font-size:90%;
            height:40px;
            white-space: nowrap;
        }

        .vset select{
            display:block;
            float:left;
            padding:5px;
            border:1px solid #ccc;
            margin-right:10px;
            border-radius:3px;
            height:30px;
        }

        .vset>span{
            display:block;
            float:left;
            padding:0 8px;
            margin-right:10px;
            border:1px solid #ccc;
            cursor:pointer;
            border-radius:3px;
            height:30px;
            font-size:12px;
            line-height:30px;
        }
        .vset>span:hover{
            background:#ebebeb;
        }


        .vote_lang{
            width:100px;
        }
        .vote_option{
            width:170px;
        }

        .votes_btn{
            margin-top:15px;
            padding:5px 10px 5px 20px;
        }
        .votes_btn input{
            background:#ebebeb;
            border:1px solid #ccc;
            padding:6px 10px;
            font-size:14px;
        }
        .votes_btn span, .votes_btn a{
            display:inline-block;
            font-size:90%;
            margin-left:20px;
        }
        .votes_btn a{
            text-decoration:none;
            color:black;
        }
        .votes_btn span:hover{
            color:#333;
        }

        .votes{
            padding:0 0 10px;
            font-family: 'Arial', sans-serif;
        }

        .f_right{
            float:right;
        }

        .votes .clear{
            clear:both;
        }

        .votes_error{
            font-size:12px;
            color:#333;
            min-height:20px;
            line-height:20px;
        }

        .votes_fault{
            padding:20px 15px;
        }

        /*radio-votes*/

        .p_input {
            vertical-align: top;
            width: 15px;
            height: 15px;
            margin: 0 2px 0 0;
        }
        .p_input + label {
            cursor: pointer;
        }
        .p_input:not(checked) {
            position: absolute;
            opacity: 0;
        }
        .p_input:not(checked) + label {
            position: relative;
            width: 100%;
            display: block;
            padding: 10px 0 0 0;
        }
        .p_input:not(checked) + label.lovote {
            padding:9px 10px 10px 50px;
        }

        .p_input:not(checked) + label.lovote:hover{
            background:#f2f2f2;
        }
        .p_input:not(checked) + label.lovote:before {
            content: '';
            position: absolute;
            top: 10px;
            left: 20px;
            width: 20px;
            height: 20px;
            border: 1px solid #CDD1DA;
            background: #FFF;
        }
        .p_input_radio:not(checked) + label.lovote:before{
            border-radius: 50%;
        }
        .p_input:not(checked) + label.lovote:after {
            content: '';
            position: absolute;
            top: 13px;
            left: 23px;
            width: 14px;
            height: 14px;
            background: #94bbfc;
            box-shadow: inset 0 1px 1px rgba(0,0,0,.5);
            opacity: 0;
            transition: all .2s;
        }
        .p_input_radio:not(checked) + label.lovote:after{
            border-radius: 50%;
        }
        .p_input:checked + label.lovote:after {
            opacity: 1;
        }
        .p_input:focus + label.lovote:before {
            box-shadow: 0 0 0 3px rgba(252, 252, 252, .9);
        }

        .p_input + label img{
            max-width:100%
        }

        /*res*/
        .res_vote{
            display:block;
            width:100%;
            background:#F2F4F7;
            font-size:12px;
            border-radius:2px;
            line-height:100%;
            margin-top:5px;
        }

        .vote_table{
            display:table;
            width:100%;
        }
        .vote_table>div{
            display:table-cell;
            vertical-align:middle;
        }
        .vote_p{
            width:50px;
            text-align:center;
        }
        .vote_l{
            height:22px;
            border-radius:2px;
            position:relative;
        }
        .vote_l span{
            position:absolute;
            top:0;
            left:0;
            height:100%;
            background:#dddeff;
            border-radius:2px;
            width:0;
            display:none;
        }
        .vote_l i{
            position:absolute;
            top:0;
            right:0;
            left:0;
            width:100%;
            line-height:22px;
            text-align:center;
            display:none;
        }

        .vote_g:after{
            content:'';
            position:absolute;
            top:0;
            left:0;
            width:28px;
            height:22px;
            line-height:22px;
            text-align:center;
            /*background: url("/css/images/poll_check.svg") no-repeat 50% 50%;*/
        }

        #my_answers{

        }

        #my_answers .elements{

        }

        #my_answers .answered{
            display:inline-block;
            padding:5px;
            border:1px solid #ebebeb;
            box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.5);
            cursor:pointer;
            margin:5px;
        }
        #my_answers .answered:hover{
            background:#ebebeb;
        }
        button {
            background-color: #23a1c8;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .container {
            /*padding: 20px;*/
        }
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
    </style>
</head>
<body>
<%--<div class="items">--%>
<div class="container" id="myContent">
    <div class="navbar" style="padding: 30px;">
        <h1 style="display: inline;">ФИО тестируемого: ${pupil.name}</h1>
        <br>
        <h2 style="display: inline;">Класс тестируемого: ${pupil.group}</h2>
        <br>
    </div>
    <br>
    <%--<div class="texting">--%>
        <%--<div class="texting_message">Вопрос №: ${question_number + 1}</div>--%>
        <%--<div class="texting_html"></div>--%>
    <%--</div>--%>
<%--</div>--%>
<%--<% List<Question> questions = (List<Question>) session.getAttribute("questions");%>--%>




        <div class="vote_tests" style="padding: 30px">
            <form name="answerForm" method="post" action="${pageContext.request.contextPath}/Controller?action=TestAnswerAction">
            <div class="inquiry"><p>${question.name}</p></div>
                <br>
            <div class="answers" style="margin-top: 10px">
                <c:forEach items="${question.answers}" var="answer">

                    <div class="answer">
                        <input id="answer_<c:out value="${answer.id}"/>" class="p_input p_input_radio" name="answer" value="<c:out value="${answer.id}"/>" type="radio">
                        <label class="lovote" for="answer_<c:out value="${answer.id}"/>"><c:out value="${answer.name}"/></label>
                        <div class="res_vote" style="display: none;">
                            <div class="vote_table">
                                <div class="vote_l">
                                    <span></span>
                                    <i></i>
                                </div>
                                <div class="vote_p"></div>
                            </div>
                        </div>
                    </div>
                    <br>
                    <%--<tr>--%>
                        <%--<td>Employee ID: </td>--%>
                        <%--<td>Employee Pass: <c:out value="${employee.ename}"/></td>--%>
                    <%--</tr>--%>
                </c:forEach>
            </div>
            <%--<div class="decision" style="display: none;">--%>
                <%--<noindex>--%>
                    <%--<div class="decision_message" lang="Шешім.">Решение.</div></noindex>--%>
                <%--<div class="decision_html"></div>--%>
            <%--</div>--%>



                <%--<div class="answer">--%>
                    <%--<input id="answer_2" class="p_input p_input_radio" name="ans_10e46c1ba2f3736877bb1f09074dacad" value="2" type="radio">--%>
                    <%--<label class="lovote" for="answer_2">увеличивается площадь лесов</label>--%>
                    <%--<div class="res_vote" style="display: none;">--%>
                        <%--<div class="vote_table">--%>
                            <%--<div class="vote_l">--%>
                                <%--<span></span>--%>
                                <%--<i></i>--%>
                            <%--</div>--%>
                            <%--<div class="vote_p"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="answer">--%>
                    <%--<input id="answer_3" class="p_input p_input_radio" name="ans_10e46c1ba2f3736877bb1f09074dacad" value="3" type="radio">--%>
                    <%--<label class="lovote" for="answer_3">изменяется климат</label>--%>
                    <%--<div class="res_vote" style="display: none;">--%>
                        <%--<div class="vote_table">--%>
                            <%--<div class="vote_l">--%>
                                <%--<span></span>--%>
                                <%--<i></i>--%>
                            <%--</div>--%>
                            <%--<div class="vote_p"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="answer">--%>
                    <%--<input id="answer_4" class="p_input p_input_radio" name="ans_10e46c1ba2f3736877bb1f09074dacad" value="4" type="radio">--%>
                    <%--<label class="lovote" for="answer_4">возникает эрозия почвы</label>--%>
                    <%--<div class="res_vote" style="display: none;">--%>
                        <%--<div class="vote_table">--%>
                            <%--<div class="vote_l">--%>
                                <%--<span></span>--%>
                                <%--<i></i>--%>
                            <%--</div>--%>
                            <%--<div class="vote_p"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <%--<div class="answer">--%>
                    <%--<input id="answer_5" class="p_input p_input_radio" name="ans_10e46c1ba2f3736877bb1f09074dacad" value="5" type="radio">--%>
                    <%--<label class="lovote" for="answer_5">происходит загрязнение воздуха</label>--%>
                    <%--<div class="res_vote" style="display: none;">--%>
                        <%--<div class="vote_table">--%>
                            <%--<div class="vote_l">--%>
                                <%--<span></span>--%>
                                <%--<i></i>--%>
                            <%--</div>--%>
                            <%--<div class="vote_p"></div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>


        <%--<noindex>--%>
            <%--<div class="votes_btn votes_error">Вы ответили на 1 вопрос из 4671</div>--%>
            <div class="votes_btn votes_submit">
                <button name="vote_send" class="vote_send" type="submit" value="Следующий вопрос" style="width: 200px; display: inline-block;">Следующий вопрос</button>
                <%--<input style="width: 178px; display: none;" name="vote_next" class="next_questions" type="button" lang="Келесі сұрақ" value="Следующий вопрос">--%>
                <%--<input style="display: none; width: 238px;" name="vote_restart" class="vote_restart" type="button" lang="Қайтадан тестілеу бастаңыз" value="Начать тестирование заново">--%>
            </div>
            <%--<div class="votes_btn">--%>
                <%--<div class="clear"></div>--%>
            <%--</div>--%>
        <%--</noindex>--%>
    </form>
</div>
    <div class="panel-footer"><h3><span style="display: inline; margin: 30px">Промежуточный результат: ${result}</span></h3></div>
</div>
</body>
</html>
