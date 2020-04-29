<html>
<head>
    <title>
        JSP Login
    </title>
    <style type="text/css">
        <%@include file="./resources/static/css/general.css"%>
    </style>
</head>
<body>
    <%@ include file="partials/banner.jsp"%>
    <%@ include file="partials/side_nav.jsp"%>

    <form name="login" method="POST">
        <label for="username">Username</label>
        <input type="text" id="username" name="username">
        <br>
        <label for="password">Password</label>
        <input type="password" id="password" name="password">
        <br>
        <input type="submit" value="Submit">
    </form>

    <c:choose>

        <c:when test="${param.username == 'admin' && param.password == 'password'}">
            <c:redirect url="./profile.jsp">
                <c:param name="username" value="${param.username}"></c:param>
                <c:param name="password" value="${param.password}"></c:param>
            </c:redirect>
                <%--A FORWARD IS BETTER: <jsp:forward page="./profile.jsp"/>--%>
        </c:when>

        <c:otherwise>
            <h1>User Login</h1>
            <h2>Username: ${param.username}</h2>
            <h2>Password: ${param.password}</h2>
            <form method="post" action="./login.jsp">
                <label for="uname"><b>Username</b></label>
                <input type="text" placeholder="Enter Username" id="uname" name="username" required><br><br>
            </form>
        </c:otherwise>

    </c:choose>

    <%@include file="partials/body-js.jsp"%>
</body>
</html>