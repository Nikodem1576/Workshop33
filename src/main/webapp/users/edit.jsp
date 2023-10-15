<%--
  Created by IntelliJ IDEA.
  User: nikodem
  Date: 13.10.2023
  Time: 17:52
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<html>
<head>
    <title>Title</title>
</head>
<body>


<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">User List</h1>
    <a href = <c:url value = "/user/list" /> class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
            class="fas fa-download fa-sm text-white-50"></i> Lista użytkowników</a>
  </div>
</div>



<form action = "/user/edit" method = "post">
  <div class="form-group">

    <input type="hidden" name="id" value="${user.id}"/>

    <label for="InputName">Nazwa użytkownika</label>
    <input value ="${user.userName}" type="text" name = "userName" class="form-control" id="InputName" aria-describedby="nameHelp">

  </div>   <div class="form-group">
  <label for="InputEmail">Email</label>
  <input value ="${user.email}" type="email" name = "userEmail" class="form-control" id="InputEmail" aria-describedby="emailHelp">

</div>
  <div class="form-group">
    <label for="InputPassword">Hasło</label>
    <input type="password" name = "userPassword" class="form-control" id="InputPassword">
  </div>

  <button type="Zapisz" class="btn btn-primary">Edytuj</button>
</form>





<%@ include file="/footer.jsp" %>
</body>

</html>
