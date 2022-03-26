<%-- 
    Document   : postDetail
    Created on : Mar 26, 2022, 11:47:58 PM
    Author     : Aur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
        <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
    </head>
    <body>

        <%@include file="../../component/header.jsp" %>

        <div class="container" style="margin-top: 4rem;">
            <h1 style="color: red">${error}</h1>
            <form action="AddActicle" method="POST">

                <div class="form-group">
                    <h1 for="">${art.getTitle()}</h1>
                </div>
                <div class="form-group">
                    <p ><i>${art.getAuthor()}-${art.getDate()}</i></p>
                </div>




                <div class="form-group">
                    <label id="reading"></label>
                    <div style="display: none">
                        <textarea name="content" hidden></textarea></div>
                    <div disabled="true" id="myTextArea" name="contents" >${art.getContent()}</div>
                </div>
                <br>
                <p id="test"></p>

            </form>
        </div>
        <script>
            var simplemde = new SimpleMDE({

            });
            var textMarkdown = simplemde.markdown('${art.getContent()}');
//    console.log(textPlain);
            document.getElementById("myTextArea").innerHTML = textMarkdown;

        </script>
    </body>
</html>
