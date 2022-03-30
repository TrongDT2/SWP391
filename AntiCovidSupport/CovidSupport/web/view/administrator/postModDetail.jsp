<%-- 
    Document   : postModDetail
    Created on : Mar 29, 2022, 9:59:47 AM
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
        <c:if test="${sessionScope.data_session.role_id == 1}">
        <%@include file="../../component/headerAdmin.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <%@include file="../../component/sidebar.jsp" %>
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <h2>${new.title}</h2>
                    <h6>${new.date} - ${new.author}</h6><!-- comment -->
                    <p>${new.content}</p>

                    <button><a style="text-decoration: none" href="postChangeStatusController?id=${new.news_id}&function=1"><i class="fa-solid fa-check"></i> Accept</a></button>
                    &nbsp; &nbsp;
                    <button> <a style="text-decoration: none" href="postChangeStatusController?id=${new.news_id}&function=0"><i class="fa-solid fa-xmark"></i> Decline</a></button>

                </main>
            </div>
        </div>
        </c:if>
    </body>
</html>
