<%-- 
    Document   : editManager
    Created on : Mar 25, 2022, 11:46:36 AM
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
        <c:if test="${sessionScope.data_session.role_id == 1 }">
        <%@include file="../../component/headerAdmin.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <%@include file="../../component/sidebar.jsp" %>
                <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                    <form class="form" action="EditController" method="post" id="registrationForm">
                        <div class="form-group">
                            <c:if test="${success!= null}">
                                <h6 style="color: green;">${success}</h6>
                            </c:if>
                            <c:if test="${message != null}">
                                <h6 style="color: red;">${message}</h6>
                            </c:if>
                            <div class="col-xs-6">
                                <label for="first_name"><h4>Username</h4></label>
                                <input type="text" class="form-control" name="username" id="first_name" value="${name.username}" title="enter your first name if any." readonly="">
                            </div>
                        </div>
                        
                            <div class="form-group">

                                <div class="col-xs-6">
                                    <label for="email"><h4>Email</h4></label>
                                    <input type="email" class="form-control" name="email" id="email"  title="enter your email." value="${name.email}" readonly="">
                                </div>
                            </div>


                            <div class="form-group">

                                <div class="col-xs-6">
                                    <label for="phone"><h4>Số điện thoại </h4></label>
                                    <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any." value="${name.phone}">
                                </div>
                            </div>

                            <div class="form-group">

                                <div class="col-xs-6">
                                    <label for="phone"><h4>Ngày sinh</h4></label>
                                    <input type="date" class="form-control" name="date" id="book_date" value="${name.date}"/>
                                </div>
                            </div>

                            <div class="form-group">

                                <div class="col-xs-6">
                                    <label for="email"><h4>Location</h4></label>
                                    <textarea rows="9" cols="70" class="form-control" id="location" title="enter a location" name="address" >${name.address}</textarea> 
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-xs-6">  
                                    <label ><h4>Role</h4></label>
                                    <select name="role">
                                        <c:forEach items="${ListRole}" var="c">
                                            <option value="${c.role_id}" <c:if test="${c.role_id == name.role_id}">selected</c:if> >${c.role_name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        

                        <div class="form-group">
                            <div class="col-xs-12">
                                <br>
                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>

                            </div>
                        </div>
                    </form>
                </main>
            </div>
        </div>
        </c:if>
        <script src="javaScript/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
        <script src="javaScript/dashboard.js"></script>
    </body>
</html>
