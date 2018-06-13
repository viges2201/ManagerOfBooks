<%--
  Created by IntelliJ IDEA.
  User: Евгений
  Date: 07.06.2018
  Time: 14:08
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link href="<c:url value="../../resources/css/main.css"/>" rel="stylesheet"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Главная страница</title>
</head>
<body bgcolor="#eeeeee">
<table width="95%" align="center">
    <tr>
        <%--Sider--%>
        <td width="20%" valign="top">

            <table class="header" align="center">
                <tr class="header" align="center">
                    <td class="header" align="center" height="100px">
                    </td>
                </tr>
            </table>

            <%--Add form--%>
            <table width="300px">
                <tr>
                    <td>
                        <c:url var="addAction" value="/book/add"/>
                        <form:form action="${addAction}" commandName="book">
                            <%--Add form--%>
                            <table class="form" align="center" width="100%">
                                <tr>
                                    <td>
                                        <table class="header" align="center">
                                            <tr class="header" align="center">
                                                <td class="header" align="center">
                                                    <c:if test="${!empty book.title}">
                                                        Обновить данные о книге
                                                    </c:if>
                                                    <c:if test="${empty book.title}">
                                                        Добавить новую книгу
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <table width="100%">
                                                <%--ID--%>
                                            <c:if test="${!empty book.title}">
                                                <tr>
                                                    <td>
                                                        <form:label path="id">
                                                            <spring:message text="ID"/>
                                                        </form:label>
                                                    </td>
                                                    <td>
                                                        <form:input path="id" readonly="true" size="8" disabled="true"/>
                                                        <form:hidden path="id"/>
                                                    </td>
                                                </tr>
                                            </c:if>
                                                <%--Title--%>
                                            <tr>
                                                <td>
                                                    <form:label path="title">
                                                        <spring:message text="Title"/>
                                                    </form:label>
                                                </td>
                                                <td>
                                                    <form:input path="title"/>
                                                </td>
                                            </tr>
                                                <%--Description--%>
                                            <tr>
                                                <td>
                                                    <form:label path="description">
                                                        <spring:message text="Description"/>
                                                    </form:label>
                                                </td>
                                                <td>
                                                    <form:input path="description"/>
                                                </td>
                                            </tr>
                                                <%--Author--%>
                                            <tr>
                                                <td>
                                                    <form:label path="author">
                                                        <spring:message text="Author"/>
                                                    </form:label>
                                                </td>
                                                <td>
                                                    <form:input path="author"/>
                                                </td>
                                            </tr>
                                                <%--ISBN--%>
                                            <tr>
                                                <td>
                                                    <form:label path="isbn">
                                                        <spring:message text="ISBN"/>
                                                    </form:label>
                                                </td>
                                                <td>
                                                    <form:input path="isbn"/>
                                                </td>
                                            </tr>
                                                <%--Print Year--%>
                                            <tr>
                                                <td>
                                                    <form:label path="printYear">
                                                        <spring:message text="PrintYear"/>
                                                    </form:label>
                                                </td>
                                                <td>
                                                    <form:input path="printYear"/>
                                                </td>
                                            </tr>
                                                <%--Read Already--%>
                                            <tr>
                                                <td>
                                                    <form:label path="readAlready">
                                                        <spring:message text="ReadAlready"/>
                                                    </form:label>
                                                </td>
                                                <td>
                                                    <form:input path="readAlready"/>
                                                </td>
                                            </tr>
                                                <%--Функции--%>
                                            <tr>
                                                <td colspan="2" class="form">
                                                    <c:if test="${!empty book.title}">
                                                        <input class="btn" type="submit"
                                                               value="<spring:message text="Обновить"/>"/>
                                                    </c:if>
                                                    <c:if test="${empty book.title}">
                                                        <input class="btn" type="submit"
                                                               value="<spring:message text="Добавить"/>"/>
                                                    </c:if>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </form:form>
                    </td>
                </tr>
                <%--Поиск--%>
                <tr>
                    <td>
                        <table class="form" width="100%">
                            <tr>
                                <td class="form">
                                    <form action="/">
                                        <input class="field" type="text" placeholder="Введите название книги"
                                               name="title"/>
                                        <input class="btn" type="submit" value="Поиск"/>
                                    </form>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
        <%--Вертикальное разделение--%>
        <td width="2%">

        </td>
        <%--Главная таблица--%>
        <td width="78%" valign="top">
            <table width="100%">
                <tr>
                    <td>
                        <table class="header" align="center">
                            <tr class="header" align="center">
                                <td class="header" align="center" height="100px">
                                    Книги
                                </td>
                            </tr>
                        </table>
                        <c:if test="${!empty listBooks}">
                            <table class="tg" align="center" width="100%">
                                <tr>
                                    <th width="80">ID</th>
                                    <th width="120">Title</th>
                                    <th width="200">Description</th>
                                    <th width="120">Author</th>
                                    <th width="100">ISBN</th>
                                    <th width="80">Print year</th>
                                    <th width="80">Read already</th>
                                    <th width="60">Edit</th>
                                    <th width="60">Delete</th>
                                </tr>
                                <tr height="10px" bgcolor="#eeeeee">

                                </tr>
                                <c:forEach items="${listBooks}" var="book">
                                    <tr>
                                        <td>${book.id}</td>
                                        <td>${book.title}</td>
                                        <td>${book.description}</td>
                                        <td>${book.author}</td>
                                        <td>${book.isbn}</td>
                                        <td>${book.printYear}</td>
                                        <td>${book.readAlready}</td>
                                        <td><a href="<c:url value='/edit/${book.id}'/>">Редактировать</a></td>
                                        <td><a href="<c:url value='/remove/${book.id}'/>">Удалить</a></td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </c:if>
                        <c:if test="${empty listBooks}">
                            <center>Список книг пуст</center>
                        </c:if>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table class="material" align="center">
                            <tr align="center">
                                <td align="center">
                                    <c:url value="/" var="prev">
                                        <c:param name="page" value="${page-1}"/>
                                    </c:url>
                                    <c:if test="${page > 1}">
                                        <a href="<c:out value="${prev}" />" class="link">Преведущая</a>
                                    </c:if>

                                    <c:forEach begin="1" end="${maxPages}" step="1" varStatus="i">
                                        <c:choose>
                                            <c:when test="${page == i.index}">
                                                <span>${i.index}</span>
                                            </c:when>
                                            <c:otherwise>
                                                <c:url value="/" var="url">
                                                    <c:param name="page" value="${i.index}"/>
                                                </c:url>
                                                <a href='<c:out value="${url}" />' class="link">${i.index}</a>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                    <c:url value="/" var="next">
                                        <c:param name="page" value="${page + 1}"/>
                                    </c:url>
                                    <c:if test="${page + 1 <= maxPages}">
                                        <a href='<c:out value="${next}" />' class="link">Следующая</a>
                                    </c:if>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<br>
</body>

</html>
