<%--
  Created by IntelliJ IDEA.
  User: Mihail
  Date: 31.10.2023
  Time: 06:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Список пользователей</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        <%@include file="styles/adminPages.css"%>
    </style>
</head>
<body>

<ul class="nav nav-tabs justify-content-center">
    <li class="nav-item">
        <a class="nav-link" href="/admin/">Результаты тестов</a>
    </li>
    <li class="nav-item">
        <a class="nav-link active" aria-current="page">Список пользователей</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/admin/createTest">Создание теста</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/logout">Выйти из системы</a>
    </li>
</ul>

    <table class="table table-bordered border-secondary align-middle">
        <thead>
        <tr>
            <th scope="col">№</th>
            <th scope="col">Пользователь</th>
            <th scope="col">Действие</th>
        </tr>
        </thead>
        <tbody>

        <c:forEach var="user" items="${users}">
            <form action="/admin/scheduletest" method="post">
                <tr>
                    <th scope="row">${user.id}</th>
                    <td>${user.login}</td>
                    <td><button class="btn btn-light" type="submit">назначить тест</button></td>
                    <input type="hidden" name="userId" value="${user.id}">
                </tr>
            </form>
        </c:forEach>

        </tbody>
    </table>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
