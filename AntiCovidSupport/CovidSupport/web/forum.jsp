<%-- 
    Document   : forum
    Created on : Mar 7, 2022, 12:29:30 AM
    Author     : trongdt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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

        <%@include file="header.jsp" %>

        <!-- Begin Site Title
        ================================================== -->
        <div class="container">
            <div class="mainheading">
                <h1 class="sitetitle">Anti covid support</h1>
                <p class="lead">
                    Cùng nhau chung tay đẩy lùi covid 19
                </p>
            </div>
            <!-- End Site Title
            ================================================== -->

            <!-- Begin Featured
            ================================================== -->
            <h4>Chủ đề</h4>
            <select>
                <option value="category_id">DO AN</option>
                <option value="category_id">THUOC</option>
                <option value="category_id">KHAC</option>
            </select>
            <input type="text" placeholder="Tìm kiếm...."> <button>Tìm kiếm</button>
            <section class="featured-posts">
                <div class="section-title">
                    <h2><span>Featured</span></h2>
                </div>
                <div class="card-columns listfeaturedtag">

                    <!-- begin post -->
                    <div class="card">
                        <div class="row">
                            <div class="col-md-5 wrapthumbnail">
                                <a href="post.html">
                                    <div class="thumbnail" style="background-image:url(img/demopic/1.jpg);">
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-7">
                                <div class="card-block">
                                    <h2 class="card-title"><a href="">Một số đồ ăn tốt cho sức khoẻ trong mùa dịch</a></h2>
                                    <h4 class="card-text">Đây là một số loai thực phẩm giúp các bạn tăng cường sức đề kháng của cơ thể</h4>
                                    <div class="metafooter">
                                        <div class="wrapfooter">
                                            <!-- <span class="meta-footer-thumb">
                                            <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                            </span>
                                            <span class="author-meta">
                                            <span class="post-name"><a href="author.html">Steve</a></span><br/>
                                            <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                            </span>
                                            <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span> -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end post -->

                    <!-- begin post -->
                    <div class="card">
                        <div class="row">
                            <div class="col-md-5 wrapthumbnail">
                                <a href="post.html">
                                    <div class="thumbnail" style="background-image:url(img/demopic/2.jpg);">
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-7">
                                <div class="card-block">
                                    <h2 class="card-title"><a href="post.html">Đồ uống trái cây tốt cho sức khoẻ</a></h2>
                                    <h4 class="card-text">Mộ số loại trái cây cung cấp vitamin c giúp tăng cường đề kháng.</h4>
                                    <div class="metafooter">
                                        <!-- <div class="wrapfooter">
                                                <span class="meta-footer-thumb">
                                                <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                                </span>
                                                <span class="author-meta">
                                                <span class="post-name"><a href="author.html">Jane</a></span><br/>
                                                <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                                </span>
                                                <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
                                        </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end post -->

                    <!-- begin post -->
                    <div class="card">
                        <div class="row">
                            <div class="col-md-5 wrapthumbnail">
                                <a href="post.html">
                                    <div class="thumbnail" style="background-image:url(img/demopic/3.jpg);">
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-7">
                                <div class="card-block">
                                    <h2 class="card-title"><a href="post.html">Trái cây tốt cho sức khoẻ mùa dịch.</a></h2>
                                    <h4 class="card-text">Tích cực tập luyện thể dục thể thao, kết hợp ăn uống lành mạnh giúp tăng cường sức đề kháng.</h4>
                                    <!-- <div class="metafooter">
                                            <div class="wrapfooter">
                                                    <span class="meta-footer-thumb">
                                                    <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                                    </span>
                                                    <span class="author-meta">
                                                    <span class="post-name"><a href="author.html">Mary</a></span><br/>
                                                    <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                                    </span>
                                                    <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
                                            </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end post -->

                    <!-- begin post -->
                    <div class="card">
                        <div class="row">
                            <div class="col-md-5 wrapthumbnail">
                                <a href="post.html">
                                    <div class="thumbnail" style="background-image:url(img/demopic/4.jpg);">
                                    </div>
                                </a>
                            </div>
                            <div class="col-md-7">
                                <div class="card-block">
                                    <h2 class="card-title"><a href="post.html">Một số phương pháp tập luyện giúp giảm căng thẳng</a></h2>
                                    <h4 class="card-text">Sức khoẻ tinh thần cũng là một yếu tố hết sức quan trọng trong quá trình làm việc.</h4>
                                    <!-- <div class="metafooter">
                                            <div class="wrapfooter">
                                                    <span class="meta-footer-thumb">
                                                    <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                                    </span>
                                                    <span class="author-meta">
                                                    <span class="post-name"><a href="author.html">Sal</a></span><br/>
                                                    <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                                    </span>
                                                    <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
                                            </div>
                                    </div> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end post -->

                </div>
            </section>
            <!-- End Featured
            ================================================== -->

            <!-- Begin List Posts
            ================================================== -->
            <section class="recent-posts">
                <div class="section-title">
                    <h2><span>Các thông tin khác</span></h2>
                </div>
                <div class="card-columns listrecent">

                    <!-- begin post -->
                    <div class="card">
                        <a href="post.html">
                            <img class="img-fluid" src="img/demopic/5.jpg" alt="">
                        </a>
                        <div class="card-block">
                            <h2 class="card-title"><a href="">Một số đồ ăn tốt cho sức khoẻ trong mùa dịch</a></h2>
                            <h4 class="card-text">Đây là một số loai thực phẩm giúp các bạn tăng cường sức đề kháng của cơ thể</h4>
                            <!-- <div class="metafooter">
                                    <div class="wrapfooter">
                                            <span class="meta-footer-thumb">
                                            <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                            </span>
                                            <span class="author-meta">
                                            <span class="post-name"><a href="author.html">Sal</a></span><br/>
                                            <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                            </span>
                                            <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
                                    </div>
                            </div> -->
                        </div>
                    </div>
                    <!-- end post -->

                    <!-- begin post -->
                    <div class="card">
                        <a href="post.html">
                            <img class="img-fluid" src="img/demopic/6.jpg" alt="">
                        </a>
                        <div class="card-block">
                            <h2 class="card-title"><a href="">Một số đồ ăn tốt cho sức khoẻ trong mùa dịch</a></h2>
                            <h4 class="card-text">Đây là một số loai thực phẩm giúp các bạn tăng cường sức đề kháng của cơ thể</h4>
                            <!-- <div class="metafooter">
                                    <div class="wrapfooter">
                                            <span class="meta-footer-thumb">
                                            <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                            </span>
                                            <span class="author-meta">
                                            <span class="post-name"><a href="author.html">Sal</a></span><br/>
                                            <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                            </span>
                                            <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
                                    </div>
                            </div> -->
                        </div>
                    </div>
                    <!-- end post -->

                    <!-- begin post -->
                    <div class="card">
                        <a href="post.html">
                            <img class="img-fluid" src="img/demopic/7.jpg" alt="">
                        </a>
                        <div class="card-block">
                            <h2 class="card-title"><a href="">Một số đồ ăn tốt cho sức khoẻ trong mùa dịch</a></h2>
                            <h4 class="card-text">Đây là một số loai thực phẩm giúp các bạn tăng cường sức đề kháng của cơ thể</h4>
                            <!-- <div class="metafooter">
                                    <div class="wrapfooter">
                                            <span class="meta-footer-thumb">
                                            <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                            </span>
                                            <span class="author-meta">
                                            <span class="post-name"><a href="author.html">Sal</a></span><br/>
                                            <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                            </span>
                                            <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
                                    </div>
                            </div> -->
                        </div>
                    </div>
                    <!-- end post -->

                    <!-- begin post -->
                    <div class="card">
                        <a href="post.html">
                            <img class="img-fluid" src="img/demopic/8.jpg" alt="">
                        </a>
                        <div class="card-block">
                            <h2 class="card-title"><a href="">Một số đồ ăn tốt cho sức khoẻ trong mùa dịch</a></h2>
                            <h4 class="card-text">Đây là một số loai thực phẩm giúp các bạn tăng cường sức đề kháng của cơ thể</h4>
                            <!-- <div class="metafooter">
                                    <div class="wrapfooter">
                                            <span class="meta-footer-thumb">
                                            <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                            </span>
                                            <span class="author-meta">
                                            <span class="post-name"><a href="author.html">Sal</a></span><br/>
                                            <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                            </span>
                                            <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
                                    </div>
                            </div> -->
                        </div>
                    </div>
                    <!-- end post -->

                    <!-- begin post -->
                    <div class="card">
                        <a href="post.html">
                            <img class="img-fluid" src="img/demopic/9.jpg" alt="">
                        </a>
                        <div class="card-block">
                            <h2 class="card-title"><a href="">Một số đồ ăn tốt cho sức khoẻ trong mùa dịch</a></h2>
                            <h4 class="card-text">Đây là một số loai thực phẩm giúp các bạn tăng cường sức đề kháng của cơ thể</h4>
                            <div class="metafooter">
                                <!-- 	<div class="wrapfooter">
                                                <span class="meta-footer-thumb">
                                                <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                                </span>
                                                <span class="author-meta">
                                                <span class="post-name"><a href="author.html">Sal</a></span><br/>
                                                <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                                </span>
                                                <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span>
                                        </div> -->
                            </div>
                        </div>
                    </div>
                    <!-- end post -->

                    <!-- begin post -->
                    <div class="card">
                        <a href="post.html">
                            <img class="img-fluid" src="img/demopic/10.jpg" alt="">
                        </a>
                        <div class="card-block">
                            <h2 class="card-title"><a href="post.html">Một số phương pháp tập luyện giúp giảm căng thẳng</a></h2>
                            <h4 class="card-text">Sức khoẻ tinh thần cũng là một yếu tố hết sức quan trọng trong quá trình làm việc.</h4>
                            <div class="metafooter">
                                <div class="wrapfooter">
                                    <!-- <span class="meta-footer-thumb">
                                    <a href="author.html"><img class="author-thumb" src="https://www.gravatar.com/avatar/e56154546cf4be74e393c62d1ae9f9d4?s=250&amp;d=mm&amp;r=x" alt="Sal"></a>
                                    </span>
                                    <span class="author-meta">
                                    <span class="post-name"><a href="author.html">Sal</a></span><br/>
                                    <span class="post-date">22 July 2017</span><span class="dot"></span><span class="post-read">6 min read</span>
                                    </span>
                                    <span class="post-read-more"><a href="post.html" title="Read Story"><svg class="svgIcon-use" width="25" height="25" viewbox="0 0 25 25"><path d="M19 6c0-1.1-.9-2-2-2H8c-1.1 0-2 .9-2 2v14.66h.012c.01.103.045.204.12.285a.5.5 0 0 0 .706.03L12.5 16.85l5.662 4.126a.508.508 0 0 0 .708-.03.5.5 0 0 0 .118-.285H19V6zm-6.838 9.97L7 19.636V6c0-.55.45-1 1-1h9c.55 0 1 .45 1 1v13.637l-5.162-3.668a.49.49 0 0 0-.676 0z" fill-rule="evenodd"></path></svg></a></span> -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end post -->

                </div>
            </section>
            <!-- End List Posts
            ================================================== -->

            <!-- Begin Footer
            ================================================== -->
            <div class="footer">
                <p class="pull-left">
                    Copyright &copy; anti covid support
                </p>

                <div class="clearfix">
                </div>
            </div>
            <!-- End Footer
            ================================================== -->

        </div>
        <!-- /.container -->

        <!-- Bootstrap core JavaScript
            ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="javaScript/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
        <script src="javaScript/bootstrap.min.js"></script>
        <script src="javaScript/ie10-viewport-bug-workaround.js"></script>
    </body>
</html>
