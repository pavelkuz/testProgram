<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="account" scope="session" type="com.carwashes.kuzovatov.model.User"/>
<html>
<%@include file="navbar.jspf" %>
<head>
    <meta charset="UTF-8">
    <title>Administration page</title>
    <link rel="stylesheet" type="text/css" href="styles/jquery.dataTables.min.css">
    <script type="text/javascript" charset="utf8" src="scripts/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" charset="utf8" src="scripts/custom.js"></script>
    <link rel="stylesheet" href="styles/bootstrap.min.css">
    <link rel="stylesheet" href="styles/bootstrap-theme.min.css">
    <script src="scripts/bootstrap.min.js"></script>
    <jsp:useBean id="abonementList" scope="session" type="java.lang.String"/>
    <style type="text/css">
        body {
            padding-top: 50px;
        }

        #body {
            width: auto;
        }

        #leftCol {
            width: 200px;
            margin-left: 30px;
        }

        #centerColumn {
            margin-left: 10px;
        }

        #masthead h1 {
            font-size: 30px;
            line-height: 1;
            padding-top: 20px;
        }

        #masthead .well {
            margin-top: 8%;
        }

        @media screen and (min-width: 768px) {
            #masthead h1 {
                font-size: 50px;
            }
        }

        #sidebar li.active {
            border: 0 #eee solid;
            border-right-width: 5px;
        }
    </style>
    <script>
        var abonementList = ${abonementList};
        $(document).ready(function () {
            var visitConfBtn = document.getElementById('visitConfirmation');
            visitConfBtn.setAttribute("class", 'list-group-item disabled');
            visitConfBtn.setAttribute("type", 'button');
            var prolongationBtn = document.getElementById('abonementProlongation');
            prolongationBtn.setAttribute("class", 'list-group-item disabled');
            prolongationBtn.setAttribute("type", 'button');
            //Abonements table script
            var abonementListTable = $('#abonementList').DataTable({
                        data: abonementList,
                        columns: [
                            {title: "ID", data: 'id', defaultContent: ""},
                            {
                                title: "<fmt:message key="clubCard.number"/>",
                                data: 'clientClubCardNumber',
                                defaultContent: ""
                            },
                            {title: "<fmt:message key="tab.abonement"/>", data: 'name', defaultContent: ""},
                            {title: "<fmt:message key="client.name"/>", data: 'clientName', defaultContent: ""},
                            {title: "<fmt:message key="tab.start"/>", data: 'startDate', defaultContent: ""},
                            {title: "<fmt:message key="tab.end"/>", data: 'endDate', defaultContent: ""},
                            {title: "<fmt:message key="trainer.name"/>", data: 'trainerName', defaultContent: ""},
                            {title: "<fmt:message key="visits.remains"/>", data: 'visitRemain', defaultContent: "0"},
                            {title: "<fmt:message key="active.status"/>", data: 'active', defaultContent: ""}
                        ],
                        "columnDefs": [
                            {
                                "targets": [0],
                                "visible": false,
                                "searchable": false
                            }
                        ]
                    }
            );
            $('#abonementList tbody').on('click', 'tr', function () {
                if ($(this).hasClass('selected')) {
                    $(this).removeClass('selected');
                    visitConfBtn.setAttribute("type", 'button');
                    visitConfBtn.setAttribute("class", 'list-group-item disabled');
                    prolongationBtn.setAttribute("type", 'button');
                    prolongationBtn.setAttribute("class", 'list-group-item disabled');
                }
                else {
                    abonementListTable.$('tr.selected').removeClass('selected');
                    $(this).addClass('selected');
                    var $selectedAbonement = $('.selected td').first().text();
                    var $abonementStatus = $('.selected td').last().text();
                    document.getElementById('selectedEntity').setAttribute("value", $selectedAbonement);
                    visitConfBtn.setAttribute("type", 'submit');
                    visitConfBtn.setAttribute("class", 'list-group-item');
                    prolongationBtn.setAttribute("type", 'submit');
                    prolongationBtn.setAttribute("class", 'list-group-item');
                    console.log($selectedAbonement);
                }
            });
        });
    </script>
</head>
<body>
<div id="body" class="container">
    <div class="row">
        <div class="col-md-3" id="leftCol">
            <%@include file="leftAdmin.jspf" %>
        </div>
        <div class="col-md-9" id="centerColumn">
            <h1><fmt:message key="nav.abonements"/>: </h1>

            <div class="display">
                <table id="abonementList" class="display"></table>
            </div>
        </div>
    </div>
</div>
</body>
<%--<%@include file="footer.jspf"%>--%>
</html>
