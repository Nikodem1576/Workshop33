<%--@elvariable id="showEmail" type="java"--%>
<%--@elvariable id="showId" type="java"--%>
<%--@elvariable id="showName" type="java"--%>
<%--
  Created by IntelliJ IDEA.
  User: nikodem
  Date: 15.10.2023
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <a href=<c:url value = "/user/add"/> class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Dodaj uzytkownika</a>
    </div>
</div>

<table class="table table-striped">
    <thead>

    <tr>
        <th scope="col">id</th>
        <th scope="col"> ${toShow.id} </th>
    </tr>
    <tr>
        <th scope="col">Nazwa użytkownika</th>
        <th scope="col"> ${toShow.userName} </th>
    </tr>
    <tr>
        <th scope="col">Email</th>
        <th scope="col"> ${toShow.email} </th>
    </tr>

    </thead>
    <tbody>





</body>
</html>
