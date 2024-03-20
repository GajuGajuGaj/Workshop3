<%--
  Created by IntelliJ IDEA.
  User: dawid
  Date: 20.03.2024
  Time: 09:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Szczegóły użytkownika</title>
</head>
<body>
<%--
  Created by IntelliJ IDEA.
  User: dawid
  Date: 19.03.2024
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <h6 class="m-0 font-weight-bold text-primary">Szczegóły użytkownika</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-borderless" id="dataTable" width="100%" cellspacing="0">
                <tbody>
                <tr>
                    <th >ID</th><td>${user.id}</td>
                </tr>
                <tr>
                    <th>Nazwa użytkownika</th><td>${user.userName}</td>
                </tr>
                <tr>
                    <th>e-mail</th><td>${user.email}</td>
                </tr>
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

</body>
</html>
