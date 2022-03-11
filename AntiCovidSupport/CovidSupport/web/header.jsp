
<%-- 
    Document   : header
    Created on : Mar 3, 2022, 11:04:20 PM
    Author     : Aur
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="img/logo1.jpeg">
        <title>Anti covid support</title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Fonts -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/mediumish.css" rel="stylesheet">
    </head>
    <body>
        <!-- Begin Nav
        ================================================== -->
        <nav class="navbar navbar-toggleable-md navbar-light bg-white fixed-top mediumnavigation">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="container">
                <!-- Begin Logo -->
                <a class="navbar-brand" href="home.jsp">
                    <img src="img/logo1.jpeg" alt="logo">
                </a>
                <!-- End Logo -->
                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                    <!-- Begin Menu -->
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                        <c:if test="${sessionScope.data_session != null}">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown">Hi, ${sessionScope.data_session.username}</a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="accountDetail.jsp">Thông tin tài khoản</a>
                                <a class="dropdown-item" href="profile.jsp">Hồ sơ của bạn</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="LoginController">Đăng xuất</a>
                            </div>
                        </c:if>
                        </li>
                        <li class="nav-item active">
                            <a class="nav-link" href="profile.jsp">Tin tức <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="">Hỏi đáp</a>
                        </li>
                        
                        <c:if test="${sessionScope.data_session == null}">
                            <li class="nav-item">
                            <a class="nav-link" href="Login.jsp">Đăng nhập</a>
                        </li>
                        </c:if>
                       
                        
                    </ul>
                    <!-- End Menu -->
                    <!-- Begin Search -->
                    <!-- <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search">
                            <span class="search-icon"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M20.067 18.933l-4.157-4.157a6 6 0 1 0-.884.884l4.157 4.157a.624.624 0 1 0 .884-.884zM6.5 11c0-2.62 2.13-4.75 4.75-4.75S16 8.38 16 11s-2.13 4.75-4.75 4.75S6.5 13.62 6.5 11z"></path></svg></span>
                    </form> -->
                    <!-- End Search -->
                </div>
            </div>
        </nav>
        <!-- End Nav
        ================================================== -->
        <script src="javaScript/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="javaScript/bootstrap.min.js"></script>
        <script src="javaScript/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>

