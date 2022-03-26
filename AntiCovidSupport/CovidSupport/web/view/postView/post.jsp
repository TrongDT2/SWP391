<%-- 
    Document   : post
    Created on : Mar 26, 2022, 11:59:54 PM
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
        <div class="container" style="margin-top: 4rem;">
            <h1 style="color: red">${error}</h1>
            <form action="AddActicle" method="POST">

                <div class="form-group">
                    <label for="">title</label>
                    <input type="text" class="form-control" name="title" value="${art.getTitle()}">
                </div>
                <div class="form-group">
                    <label for="">author</label>
                    <input type="text" class="form-control" name="author" value="${art.getAuthor()}" >
                </div>




                <div class="form-group">
                    <label for="">Content</label>
                    <textarea name="content" id="myTextArea"></textarea>

                </div>

                <br>
                <button type="submit" class="btn btn-lg btn-info">Submit</button>
            </form>
        </div>
        <script>
            var simplemde = new SimpleMDE({
                element: document.getElementById("myTextArea")
            });
            simplemde.value('${art.getContent()}');
        </script>
    </body>
</html>
