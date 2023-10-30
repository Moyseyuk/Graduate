<%--
  Created by IntelliJ IDEA.
  User: Mihail
  Date: 26.10.2023
  Time: 02:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<sf:form class="row g-3" method="post" action="/" modelAttribute="user">
    <c:if test="${param.error != null}">
        <div class="alert alert-danger">Неверные логин или пароль</div>
    </c:if>
    <h1 class="text-center">Войдите в систему</h1>
    <div class="col-md-2 offset-md-5">
        <label for="validationDefault01" class="form-label">Введите логин:</label>
        <sf:input type="text" name="login" class="form-control" id="validationDefault01" path="login"/>
    </div>
    <div class="col-md-2 offset-md-5">
        <label for="validationDefault02" class="form-label">Введите пароль:</label>
        <sf:input type="text" name="password" class="form-control" id="validationDefault02" path="password"/>
    </div>
    <div class="col-md-2 offset-md-5">
        <button class="btn btn-outline-primary" type="submit" value="login">Вход</button>
    </div>
</sf:form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
