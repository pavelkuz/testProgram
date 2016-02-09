<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n"/>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon1"><fmt:message key="trainer.name"/>: </span>
    <input required type="text" name="txtName" class="form-control" placeholder="<fmt:message key="trainer.name"/>"
           aria-describedby="sizing-addon1">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon2"><fmt:message key="birthday"/>: </span>
    <input required type="text" name="txtBirthday" id="date" class="form-control"
           placeholder="<fmt:message key="birthday"/>" aria-describedby="sizing-addon2">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon3"><fmt:message key="contact.inf"/>: </span>
    <input required type="text" name="txtContactInformation" class="form-control"
           placeholder="<fmt:message key="contact.inf"/>" aria-describedby="sizing-addon3">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon20"><fmt:message key="address"/>: </span>
    <input required type="text" name="txtAddress" class="form-control" placeholder="<fmt:message key="address"/>"
           aria-describedby="sizing-addon20">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon5"><fmt:message key="trainer.achievements"/>: </span>
    <input required type="text" name="txtAchievements" class="form-control"
           placeholder="<fmt:message key="trainer.achievements"/>" aria-describedby="sizing-addon5">
</div>