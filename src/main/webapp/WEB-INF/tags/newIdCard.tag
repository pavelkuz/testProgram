<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n"/>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon10"><fmt:message key="idCard.name"/>: </span>
    <input required type="text" name="txtIdentificationCardName" class="form-control"
           placeholder="<fmt:message key="idCard.name"/>" aria-describedby="sizing-addon10">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon11"><fmt:message key="idCard.number"/>: </span>
    <input required type="text" name="txtIdentificationCardNumber" class="form-control"
           placeholder="<fmt:message key="idCard.number"/>" aria-describedby="sizing-addon11">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon12"><fmt:message key="idCard.date"/>: </span>
    <input required type="text" name="txtIdentificationCardIssueDate" id="idDate" class="form-control"
           placeholder="<fmt:message key="idCard.date"/>" aria-describedby="sizing-addon12">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon13"><fmt:message key="idCard.authority"/>: </span>
    <input required type="text" name="txtIssuingAuthority" class="form-control"
           placeholder="<fmt:message key="idCard.authority"/>" aria-describedby="sizing-addon13">
</div>