<%--
  Created by IntelliJ IDEA.
  User: Евгений
  Date: 07.06.2018
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link href="<c:url value="resources/css/main.css"/>" rel="stylesheet"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Главная страница</title>
</head>
<body>
<h1>Добро пожаловать в билиотеку по мативам тестового задания от JavaRush(CRUD (create, read, update, delete).)</h1>

<a href="<c:url value="/books"/>" target="_blank">Книжная полка</a>

</body>
</html>
