<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n"/>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon4"><fmt:message key="gender.male"/>: </span>
    <input required type="radio" name="rdoGender" id="Male" value="<fmt:message key="gender.male"/>" class="form-control"
           aria-describedby="sizing-addon4">
    <span class="input-group-addon" id="sizing-addon19"><fmt:message key="gender.female"/>: </span>
    <input required type="radio" name="rdoGender" id="Female" value="<fmt:message key="gender.female"/>" class="form-control"
           aria-describedby="sizing-addon19">
</div>