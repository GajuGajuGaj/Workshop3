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
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
</div>

<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Nazwa użytkownika</th>
                    <th>e-mail</th>
                    <th>Akcja</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>Tiger Nixon</td>
                    <td>System Architect</td>
                    <td>Edinburgh</td>
                    <td><a href="google.pl">Usuń</a> <a href="google.pl">Edytuj</a> <a href="google.pl">Pokaż</a></td>
                </tr>
                <tr>
                    <td>Garrett Winters</td>
                    <td>Accountant</td>
                    <td>Tokyo</td>
                    <td><a href="google.pl">Usuń</a> <a href="google.pl">Edytuj</a> <a href="google.pl">Pokaż</a></td>
                </tr>
                <tr>
                    <td>Ashton Cox</td>
                    <td>Junior Technical Author</td>
                    <td>San Francisco</td>
                    <td><a href="google.pl">Usuń</a> <a href="google.pl">Edytuj</a> <a href="google.pl">Pokaż</a></td>
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
