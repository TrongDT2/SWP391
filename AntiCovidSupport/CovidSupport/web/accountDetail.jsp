<%-- 
    Document   : accountDetail
    Created on : Mar 6, 2022, 10:10:03 PM
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
         <%@include file="component/header.jsp" %>
        <div class="container">
            <div class="row">


                <div class="container bootstrap snippet">
                    <div class="row">
                        <div class="col-sm-10"><h1>Hồ sơ cá nhân</h1></div>
                    </div>
                    <div class="row">
                        <div class="col-sm-3"><!--left col-->


                            <div class="text-center">
                                
                                <img src="http://ssl.gstatic.com/accounts/ui/avatar_2x.png" class="avatar img-circle img-thumbnail" alt="avatar">
                                
                                
                                <img src="#" class="avatar img-circle img-thumbnail" alt="avatar">
                               
                                <h6>Upload a different photo...</h6>
                                <input type="file" class="text-center center-block file-upload" name="img" accept="image/*">
                            </div></hr><br>


                            <div class="panel panel-default">
                                <div class="panel-heading">Website <i class="fa fa-link fa-1x"></i></div>
                                <div class="panel-body"><a href="#">www.google.com</a></div>
                            </div>


                            <ul class="list-group">
                                <li class="list-group-item text-muted">Activity <i class="fa fa-dashboard fa-1x"></i></li>
                                <li class="list-group-item text-right"><span class="pull-left"><strong>Shares</strong></span> 125</li>
                                <li class="list-group-item text-right"><span class="pull-left"><strong>Likes</strong></span> 13</li>
                                <li class="list-group-item text-right"><span class="pull-left"><strong>Posts</strong></span> 37</li>
                                <li class="list-group-item text-right"><span class="pull-left"><strong>Followers</strong></span> 78</li>
                            </ul> 

                            <div class="panel panel-default">
                                <div class="panel-heading">Social Media</div>
                                <div class="panel-body">
                                    <i class="fa fa-facebook fa-2x"></i> <i class="fa fa-github fa-2x"></i> <i class="fa fa-twitter fa-2x"></i> <i class="fa fa-pinterest fa-2x"></i> <i class="fa fa-google-plus fa-2x"></i>
                                </div>
                            </div>

                        </div><!--/col-3-->
                        <div class="col-sm-9">
                            <div class="tab-content">
                                <div class="tab-pane active" id="home">
                                    <hr>
                                    <c:if test="${success!= null}">
                                        <h6 style="color: green;">${success}</h6>
                                    </c:if>
                                    <c:if test="${message != null}">
                                        <h6 style="color: red;">${message}</h6>
                                    </c:if>
                                    <form class="form" action="UpdateProfileController" method="post">
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="first_name"><h4>Username</h4></label>
                                                <input type="text" class="form-control" name="username" id="first_name" value="${sessionScope.data_session.username}" title="enter your first name if any." readonly="">
                                            </div>
                                        </div>
                                                <c:if test="${acc != null}">
                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="email"><h4>Email</h4></label>
                                                <input type="email" class="form-control" name="email" id="email"  title="enter your email." value="${acc.email}" readonly="">
                                            </div>
                                        </div>


                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="phone"><h4>Số điện thoại </h4></label>
                                                <input type="text" class="form-control" name="phone" id="phone" placeholder="enter phone" title="enter your phone number if any." value="${acc.phone}">
                                            </div>
                                        </div>

                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="phone"><h4>Ngày sinh</h4></label>
                                                <input type="date" class="form-control" name="date" id="book_date" value="${acc.date}"/>
                                            </div>
                                        </div>

                                        <div class="form-group">

                                            <div class="col-xs-6">
                                                <label for="email"><h4>Location</h4></label>
                                                <textarea rows="9" cols="70" class="form-control" id="location" title="enter a location" name="address" >${acc.address}</textarea> 
                                            </div>
                                        </div>
                                            </c:if>

                                        <div class="form-group">
                                            <div class="col-xs-12">
                                                <br>
                                                <button class="btn btn-lg btn-success" type="submit"><i class="glyphicon glyphicon-ok-sign"></i> Save</button>
                                                
                                            </div>
                                        </div>
                                    </form>



                                </div><!--/tab-pane-->


                            </div><!--/tab-pane-->
                        </div><!--/tab-content-->

                    </div><!--/col-9-->
                </div><!--/row-->
            </div>
        </div>

    </body>
</html>
