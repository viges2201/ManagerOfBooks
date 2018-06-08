<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<%--
  Created by IntelliJ IDEA.
  User: Евгений
  Date: 07.06.2018
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table class="tg">
    <tr>
        <th width="80">ID</th>
        <th width="120">Title</th>
        <th width="200">Description</th>
        <th width="120">Author</th>
        <th width="80">ISBN</th>
        <th width="80">Print year</th>
        <th width="80">Read already</th>
        <th width="60">Edit</th>
        <th width="60">Delete</th>
    </tr>
    <tr>
        <td>${book.id}</td>
        <td>${book.title}</td>
        <td>${book.description}</td>
        <td>${book.author}</td>
        <td>${book.isbn}</td>
        <td>${book.printYear}</td>
        <td>${book.readAlready}</td>
        <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
        <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>
    </tr>
</table>
</body>
</html>
