<%-- 
    Document   : postList
    Created on : Mar 27, 2022, 1:34:40 AM
    Author     : Aur
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap2.min.css" rel="stylesheet">
        <link href="css/dashboard.css" rel="stylesheet">
        <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/dashboard/">  
        <script src="https://kit.fontawesome.com/d3c64dc7da.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="../../component/headerAdmin.jsp" %>

        <div class="container-fluid">
            <div class="row">
                <%@include file="../../component/sidebar.jsp" %>

                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <h2>Post List</h2>
                    <button type="button" class="btn btn-success" onclick="window.location.href='EditNewsController';"><i class="fa-solid fa-plus"></i> Create News</button>
                    <div class="table-responsive">
                        <table class="table table-striped table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Title</th>
                                    <th scope="col">Date</th>
                                    <th scope="col">Author</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listNews}" var="o">
                                    <tr>
                                        <td>${o.news_id}</td>
                                        <td>${o.title}</td>
                                        <td>${o.date}</td>
                                        <td>${o.author}</td>
                                         <td>
                                            <a href="EditNewsController?newid=${o.news_id}"><i class="fa-solid fa-pen"></i></a>
                                            &nbsp; &nbsp;
                                            <a href="DeleteNewsController?newid=${o.news_id}"><i class="fa-regular fa-trash-can"></i></a>
                                        </td>
                                    </tr> 

                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </main>
            </div>
        </div>

        <script src="javaScript/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
        <script src="javaScript/dashboard.js"></script>
    </body>
</html>
