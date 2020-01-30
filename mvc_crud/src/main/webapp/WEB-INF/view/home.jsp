<%-- 
    Document   : index
    Created on : 9 Δεκ 2019, 9:32:51 μμ
    Author     : chris
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AFDEmp_CB9_Assignment2</title>
        <link href="<c:url value="/static/css/bootstrap.min.css"/>"
              rel="stylesheet">
        <script src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>
        <script src="<c:url value="/static/js/bootstrap.min.js" />"></script>
    </head>
    <body>
        <div class="container">
            <div class="col-md-offset-1 col-md-10">
                <h1 class="text-left">CRUD operations for entity 'Trainer'</h1>
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title"><a href="${pageContext.request.contextPath}/trainer/list"> 
                                <input type="button" value="Trainers List" class="btn btn-primary"/></a></div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
