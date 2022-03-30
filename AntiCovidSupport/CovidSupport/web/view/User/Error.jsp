<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Anti covid support</title>
        <link rel="stylesheet" href="css/myStyle.css" type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <div class="container">
            <jsp:include page="../../component/header.jsp"/>
            <div style="display: flex; 
                 flex-direction: column; 
                 justify-content: center;
                 align-items: center;
                 height: 600px;"
                 >
                <h2>Xin lỗi!</h2>
                <h3>Có vấn đề đã xảy ra. Xin vui lòng thử lại sau</h3>
                <p>Lỗi: ${errorMessage}</p>
            </div>
            
        </div>
    </body>
</html>
