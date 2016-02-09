<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n"/>
<div id="body" class="container">
    <input type="hidden" name="pageName" value="${entity}"/>

    <div class="row">
        <div style="margin-left: 200px" class="col-md-9" id="centerColumn">
            <h1><fmt:message key="trainer.bio"/>:</h1>
            <ul class="list-group">
                <span style="border: solid #dddddd; border-radius: 0;" class="input-group-addon"
                      id="sizing-addon1"><fmt:message key="trainer.name"/>: </span>
                <li class="list-group-item">${trainer.name}</li>
                <span style="border: solid #dddddd;" class="input-group-addon" id="sizing-addon3"><fmt:message
                        key="contact.inf"/>: </span>
                <li class="list-group-item">${trainer.contactInformation}</li>
                <span style="border: solid #dddddd;" class="input-group-addon" id="sizing-addon5"><fmt:message
                        key="trainer.achievements"/>: </span>
                <li class="list-group-item">${trainer.achievements}</li>
            </ul>
        </div>
    </div>
</div>