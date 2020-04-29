<html>
<head>
    <title>
        JSP Login
    </title>
    <style type="text/css">
        <%@include file="./resources/static/css/general.css"%>
    </style>
</head>
</html>
    <%@ include file="partials/banner.jsp"%>
    <%@ include file="partials/side_nav.jsp"%>

    <c:choose>

        <c:when test="${param.username == 'admin' && param.password == 'password'}">
            <c:redirect url="./profile.jsp">
                <c:param name="username" value="${param.username}"></c:param>
                <c:param name="password" value="${param.password}"></c:param>
            </c:redirect>
                <%--A FORWARD IS BETTER: <jsp:forward page="./profile.jsp"/>--%>
        </c:when>


    </c:choose>