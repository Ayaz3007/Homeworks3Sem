<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Sign In</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="${contextPath}/css/start.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="${contextPath}/js/darktheme.js"></script>
    <link rel="stylesheet" href="${contextPath}/css/form-sign.css"/>
</head>
<body class="text-center">
        <main class="form-sign">
            <form action="${contextPath}/sign-in" method="post">
                <a href="${contextPath}/">
                    <img class="mb-4" src="${contextPath}/images/AVIATALES_free-file.png" alt="logo" width="120" height="80">
                </a>
                <h1 class="h3 mb-3 fw-normal">Пожалуйста, войдите</h1>
                <div class="form-floating">
                    <input id="floatingInput" name="email" class="form-control" type="email">
                    <label for="floatingInput">Email address</label>
                </div>
                <div class="form-floating">
                    <input id="floatingPassword" name="password" class="form-control" type="password">
                    <label for="floatingPassword">Password</label>
                </div>
                <button class="w-100 btn btn-lg btn-primary" type="submit">Вход</button>
                <a href="${contextPath}/sign-up">Регистрация</a>
            </form>
            <c:if test="${param.error == true}">
                <p>Данные введены неверно</p>
            </c:if>
        </main>
</body>
</html>
