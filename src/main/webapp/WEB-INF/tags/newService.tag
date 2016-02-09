<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="language"
       value="${not empty param.language ? param.language : not empty language ? language : pageContext.request.locale}"
       scope="session"/>
<fmt:setLocale value="${language}"/>
<fmt:setBundle basename="i18n"/>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon1"><fmt:message key="service.name"/>: </span>
    <input required type="text" name="txtServiceName" class="form-control"
           placeholder="<fmt:message key="service.name"/>" aria-describedby="sizing-addon1">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon2"><fmt:message key="service.price"/> (<fmt:message key="price.from"/> x <fmt:message key="price.to"/> xxxxxx): </span>
    <input pattern="\d{1,6}" required type="text" name="txtServicePrice" class="form-control"
           placeholder="<fmt:message key="service.price"/>" aria-describedby="sizing-addon2">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon3"><fmt:message key="service.visits"/> (<fmt:message key="price.from"/> x <fmt:message key="price.to"/> xxx): </span>
    <input pattern="\d{1,3}" required type="text" name="txtVisits" class="form-control" placeholder="<fmt:message key="service.visits"/>"
           aria-describedby="sizing-addon3">
</div>
<div class="input-group input-group-lg">
    <span class="input-group-addon" id="sizing-addon4"><fmt:message key="service.months"/> (<fmt:message key="price.from"/> x <fmt:message key="price.to"/> xx): </span>
    <input pattern="\d{1,2}" required type="text" name="txtMonths" class="form-control" placeholder="<fmt:message key="service.months"/>"
           aria-describedby="sizing-addon4">
</div>