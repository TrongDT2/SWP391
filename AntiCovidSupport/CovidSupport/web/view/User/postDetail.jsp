<%-- 
    Document   : postDetail
    Created on : Mar 29, 2022, 2:00:56 PM
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
        
        <%@include file="../../component/header.jsp" %>
        <div class="container-fluid">
            <div class="row" style=" margin-left: 30%">
                
                <main style="width: 600px;">
                    <h2>${new.title}</h2>
                    <h6>${new.date} - ${new.author}</h6><!-- comment -->
                    <p>${new.content}</p>
                    <image src="${new.image}"style="width: 550px; height: 400px">
                    
                </main>
            </div>
        </div>
        
    </body>
</html>
