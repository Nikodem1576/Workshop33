<%--
  Created by IntelliJ IDEA.
  User: nikodem
  Date: 12.10.2023
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>

<head>
    <title>Add user</title>
</head>
<%@ include file="/header.jsp"%>
<body>

<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Dodajesz użytkownika</h1>
    <a href="#" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Lista użytkownikow</a>
</div>

<form action = "/user/add" method = "post">
    <div class="form-group">

        <label for="InputName">Nazwa użytkownika</label>
        <input type="text" name = "userName" class="form-control" id="InputName" aria-describedby="nameHelp">

    </div>   <div class="form-group">
        <label for="InputEmail">Email</label>
        <input type="email" name = "userEmail" class="form-control" id="InputEmail" aria-describedby="emailHelp">

    </div>
    <div class="form-group">
        <label for="InputPassword">Hasło</label>
        <input type="password" name = "userPassword" class="form-control" id="InputPassword">
    </div>

    <button type="Zapisz" class="btn btn-primary">Submit</button>
</form>




</body>
<%@ include file="/footer.jsp"%>
</html>
