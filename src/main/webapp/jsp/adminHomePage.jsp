<%--
  Created by IntelliJ IDEA.
  User: Mihail
  Date: 26.10.2023
  Time: 13:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Результаты тестов</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        <%@include file="styles/adminPages.css"%>
    </style>
</head>
<body>
<ul class="nav nav-tabs justify-content-center">
    <li class="nav-item">
        <a class="nav-link active" aria-current="page">Результаты тестов</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/admin/userList/">Список пользователей</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/admin/createTest/">Создание теста</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="/logout">Выйти из системы</a>
    </li>
</ul>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
