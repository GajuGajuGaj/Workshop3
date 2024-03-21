<%--
  Created by IntelliJ IDEA.
  User: dawid
  Date: 19.03.2024
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edytuj użytkownika</title>
</head>
<body>
<%@ include file="/header.jsp" %>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
    <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
</div>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Edytuj użytkownika</h6>
    </div>
    <div class="card-body">
            <form action="/user/edit" method="post">
                Nazwa użytkownika<br>
                <input type="text" name="userName" style="background-color: #f8f9fc; border: 1px solid #e3e6f0; border-radius: 5px; font-size:15px; padding: 10px; height: 35px;" placeholder="Nazwa użytkownika" value="${user.userName}"/><br>
                e-mail<br>
                <input type="text" name="email" style="background-color: #f8f9fc; border: 1px solid #e3e6f0; border-radius: 5px; font-size:15px; padding: 10px; height: 35px;" placeholder="e-mail użytkownika" value="${user.email}"/><br>
                Hasło<br>
                <input type="password" name="password" style="background-color: #f8f9fc; border: 1px solid #e3e6f0; border-radius: 5px; font-size:15px; padding: 10px; height: 35px;" placeholder="Hasło użytkownika"/><br><br>
                <button type="submit" name ="id" value= "${user.id}" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Edytuj</button>
            </form>
    </div>
</div>
</div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
