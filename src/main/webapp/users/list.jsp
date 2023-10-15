<%--@elvariable id="ofUsers" type="java"--%>
<%--@elvariable id="user" type="java"--%>
<%--@elvariable id="userToRead" type="java"--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<!DOCTYPE html>
<html lang="en">



                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">User List</h1>
                        <a href="/user/add" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i> Dodaj uzytkownika</a>
                    </div>
            </div>




<!-- Table with users N -->

<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">id</th>
        <th scope="col">Nazwa użytkownika</th>
        <th scope="col">Email</th>
        <th scope="col">Akcja</th>
    </tr>
    </thead>
    <tbody>

    <form action = "/user/list" method="get">
    <tr>
        <c:forEach items ="${ofUsers}" var ="user">
            <tr>
        <th scope="row">${user.id}</th>
        <td>${user.userName}</td>
        <td>${user.email}</td>

        <td>
            <a href = <c:url value="/user/delete?id=${user.id}"/> > Usuń </a>



            <a href = <c:url value="/user/edit?id=${user.id}"/> > Edit </a>


           <a href= <c:url value="/user/show?id=${user.id}"/> > Pokaż </a>
        </td>
            </tr>
        </c:forEach>
    </tr>

    </form>

    </tbody>
</table>
<%--    <tr>--%>
<%--        <th scope="row">2</th>--%>
<%--        <td>Jacob</td>--%>
<%--        <td>Thornton</td>--%>
<%--        <td>@fat</td>--%>
<%--    </tr>--%>
<%--    <tr>--%>
<%--        <th scope="row">3</th>--%>
<%--        <td>Larry</td>--%>
<%--        <td>the Bird</td>--%>
<%--        <td>@twitter</td>--%>
<%--    </tr>--%>



            <!-- End of Main Content -->

<%@ include file="/footer.jsp" %>

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->



    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>


    <!-- Bootstrap core JavaScript-->
    <script src="../theme/vendor/jquery/jquery.min.js"></script>
    <script src="../theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../theme/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../theme/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../theme/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../theme/js/demo/chart-area-demo.js"></script>
    <script src="../theme/js/demo/chart-pie-demo.js"></script>
    </div>
<div>

</div>
</body>

</html>