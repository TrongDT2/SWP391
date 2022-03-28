<%-- 
    Document   : editNewsManager
    Created on : Mar 27, 2022, 3:39:36 AM
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
                    <form class="form" action="EditNewsController" method="post" >
                        <div class="form-group">
                            <c:if test="${success!= null}">
                                <h6 style="color: green;">${success}</h6>
                            </c:if>
                            <c:if test="${message != null}">
                                <h6 style="color: red;">${message}</h6>
                            </c:if>
                            <div class="form-group">

                                <div class="col-xs-6">
                                    <label for="image"><h4>ID</h4></label>
                                    <input type="text" class="form-control" name="id" id="phone" value="${news.news_id}" readonly="">
                                </div>
                            </div>
                            <div class="col-xs-6">
                                <label for="first_name"><h4>Title</h4></label>
                                <input type="text" class="form-control" name="title" value="${news.title}" >
                            </div>
                        </div>

                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="image"><h4>Image</h4></label>
                                <input type="text" class="form-control" name="image" id="phone" value="${news.image}">
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label ><h4>Author</h4></label>
                                <input type="text" class="form-control" name="author" id="phone" value="${news.author}">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-xs-6">  
                                <label ><h4>Category</h4></label>
                                <select name="category">
                                    <c:forEach items="${category}" var="c">
                                        <option value="${c.category_id}" <c:if test="${c.category_id == news.category_id}">selected</c:if> >${c.name}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">

                            <div class="col-xs-6">
                                <label for="email"><h4>Description</h4></label>
                                <textarea rows="9" cols="70" class="form-control" id="location" title="enter a location" name="description" >${news.content}</textarea> 
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

        <script src="javaScript/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
        <script src="javaScript/dashboard.js"></script>


    </body>
</html>
