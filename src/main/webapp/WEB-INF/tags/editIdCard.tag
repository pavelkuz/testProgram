<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n"/>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon6"><fmt:message key="idCard.name"/>: </span>
    <input required type="text" name="txtIdCardName" class="form-control" placeholder="<fmt:message key="idCard.name"/>"
           aria-describedby="sizing-addon6" value="${trainer.identifyCard.name}">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon7"><fmt:message key="idCard.number"/>: </span>
    <input required type="text" name="txtIdCardNumber" class="form-control"
           placeholder="<fmt:message key="idCard.number"/>" aria-describedby="sizing-addon7"
           value="${trainer.identifyCard.identifyCardNumber}">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon8"><fmt:message key="idCard.date"/>: </span>
    <input required type="text" name="txtIdCardDate" class="form-control" id="idDate"
           placeholder="<fmt:message key="idCard.date"/>" aria-describedby="sizing-addon8"
           value="${trainer.identifyCard.identifyCardIssueDate}">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon9"><fmt:message key="idCard.authority"/>: </span>
    <input required type="text" name="txtIdCardAuthority" class="form-control"
           placeholder="<fmt:message key="idCard.authority"/>" aria-describedby="sizing-addon9"
           value="${trainer.identifyCard.issuingAuthority}">
</div>