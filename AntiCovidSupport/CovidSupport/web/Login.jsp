<%-- 
    Document   : Register
    Created on : Feb 21, 2022, 10:20:33 PM
    Author     : Aur
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" href="img/logo1.jpeg">
        <title>Anti covid support</title>
        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <!-- Fonts -->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Righteous" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="css/mediumish.css" rel="stylesheet">
        <link href="css/login.css" rel="stylesheet">
        <!-- icon-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    </head>

    <body>
      <%@include file="header.jsp" %>

        <!-- Begin Login
    ================================================== -->
        <div id="logreg-forms">
            <form class="form-signin" action="LoginController" method="POST">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
                <div class="social-login">
                    <button class="btn facebook-btn social-btn" type="button"><span><i class="fab fa-facebook-f"></i> Sign in with Facebook</span> </button>
                    <button class="btn google-btn social-btn" type="button"><span><i class="fab fa-google-plus-g"></i> Sign in with Google+</span> </button>
                </div>
                <p style="text-align:center"> OR  </p>
                <c:if test="${success != null}">
                    <div class="alert alert-success" role="alert">${success}</div>
                </c:if>
                <c:if test="${message != null}">
                    <h6 style="color: red;">${message}</h6>
                </c:if>
                <input type="text" id="inputUsername" class="form-control" placeholder="Username" required="" autofocus="" name="username">
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="" name="password">

                <button id="btnSubmit" class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i>Sign in</button>
                <a href="#" id="forgot_pswd">Forgot password?</a>
                <hr>
                
                <button class="btn btn-primary btn-block" type="button" onclick="location.href='register.jsp'" id="btn-signup"><i class="fas fa-user-plus"></i> Sign up New Account</button>
            </form>

        </div>
        
        <!-- End Login
        ================================================== -->
    </body>

</html>
