<%--
  Created by IntelliJ IDEA.
  User: dawid
  Date: 19.03.2024
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dodaj użytkownika</title>
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
        <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
    </div>
    <div class="card-body">
            <form action="/user/add" method="post" >
                Nazwa użytkownika<br>
                <input type="text" class="form-input" name="userName" placeholder="Nazwa użytkownika"/><br>
                e-mail<br>
                <input type="text" class="form-input" name="email" placeholder="e-mail użytkownika"/><br>
                Hasło<br>
                <input type="password" class="form-input" name="password" placeholder="Hasło użytkownika"/><br><br>
                <button type="submit" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">Zapisz</button>
            </form>
    </div>
</div>
</div>
</div>
<%@ include file="/footer.jsp" %>
</body>
</html>
