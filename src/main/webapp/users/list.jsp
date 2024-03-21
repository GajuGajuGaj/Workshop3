<%--
  Created by IntelliJ IDEA.
  User: dawid
  Date: 19.03.2024
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Lista użytkowników</title>
</head>
<body>
<%@ include file="/header.jsp" %>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
</div>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
    </div>
    <div class="card-body">
        <div>
            <table class="table table-borderless" style="border: 1px solid white" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr style="border-bottom: 1px solid #e3e6f0;">
                    <th style="background-color:#fafcff; border-right: 1px solid #e3e6f0">ID</th>
                    <th style="background-color:#fafcff; border-right: 1px solid #e3e6f0">Nazwa użytkownika</th>
                    <th style="background-color:#fafcff; border-right: 1px solid #e3e6f0">e-mail</th>
                    <th style="background-color:#fafcff">Akcja</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${users}" var="user">
                    <tr style="border-top: 1px solid #e3e6f0;">
                        <td style="border-right: 1px solid #e3e6f0">${user.id}</td>
                        <td style="border-right: 1px solid #e3e6f0">${user.userName}</td>
                        <td style="border-right: 1px solid #e3e6f0">${user.email}</td>
                        <td><a href="/user/delete?id=${user.id}">Usuń</a> <a href="/user/edit?id=${user.id}">Edytuj</a> <a href="/user/show?id=${user.id}">Pokaż</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
