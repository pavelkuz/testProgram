<%@ taglib tagdir="/WEB-INF/tags" prefix="am" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n"/>
<h1><fmt:message key="nav.password"/>:</h1>

<form action="${pageContext.request.contextPath}/Controller?action=UpdateEntityAction">
    <input type="hidden" name="pageName" value="password"/>

    <div class="input-group input-group-lg">
        <span class="input-group-addon" id="sizing-addon1"><fmt:message key="password.old"/>: </span>
        <input required type="password" name="oldPassword" id="oldPassword" class="form-control"
               placeholder="<fmt:message key="password.old"/>" aria-describedby="sizing-addon1">
    </div>
    <div class="input-group input-group-lg">
        <span class="input-group-addon" id="sizing-addon17"><fmt:message key="password.new"/>: </span>
        <input required type="password" name="newPassword" id="password" class="form-control"
               placeholder="<fmt:message key="password.new"/>" onkeyup="checkPass(); return false;"
               aria-describedby="sizing-addon17">
    </div>
    <div class="input-group input-group-lg">
        <span class="input-group-addon" id="sizing-addon18"><fmt:message key="password.confirm"/>: </span>
        <input required type="password" name="confirmPassword" id="confirmPassword" onkeyup="checkPass(); return false;"
               class="form-control" placeholder="<fmt:message key="password.confirm"/>"
               aria-describedby="sizing-addon18">
    </div>
    <div id="confirmMessage" class="confirmMessage"></div>
    <div>
          <span>
            <button formmethod="post" class="btn btn-success navbar-btn"><fmt:message key="save"/></button>
            <button type="reset" class="btn btn-danger navbar-btn"><fmt:message key="cancel"/></button>
          </span>
    </div>
    <h2>${error}</h2>

    <h2>${success}</h2>
</form>