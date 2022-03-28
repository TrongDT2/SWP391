<%-- 
    Document   : post
    Created on : Mar 26, 2022, 11:04:54 PM
    Author     : Aur
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="../../component/header.jsp" %>
        <div class="container-fluid p-0">
            <hr class="m-0">

            <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="experience">
                <div class="my-auto">
                    <a href="AddActicle">Add new article</a>
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Title</th>
                            <th scope="col">Author</th>
                            <th scope="col">Date</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="art" items="${listArticles}">

                        <tr class="resume-content mr-auto">
                            <td  ><a style="color: #2196F3" href="DetailPost?id=${art.getId()}">${art.getTitle()}</a></h3>
                            <td >${art.getAuthor()}</td>
                            <td>${art.getDate()}</td>
                            <td>
                                <a href="edit?id=${art.getId()}">Edit</a>
                                <a href="delete?id=${art.getId()}">Delete</a>
                            </td>
                        </tr>


                    </c:forEach>
                    </tbody>
                </table>
            </section>
        </div>
    </body>
</html>
