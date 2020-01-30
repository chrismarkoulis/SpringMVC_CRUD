<%-- 
    Document   : formTrainer
    Created on : 9 Δεκ 2019, 9:59:48 μμ
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AFDEmp_CB9_Assignment2</title>
        <link href="<c:url value="/static/css/bootstrap.min.css" />"
              rel="stylesheet">
        <script src="<c:url value="/static/js/jquery-1.11.1.min.js" />"></script>
        <script src="<c:url value="/static/js/bootstrap.min.js" />"></script>
    </head>
    <body>
        <div class="container">
            <div class="col-md-offset-1 col-md-10">
                <c:choose>
                    <c:when test="${trainer.id!=0}">
                        <h1>Update Trainer</h1>
                    </c:when>
                    <c:otherwise>
                        <h1>Create Trainer</h1>
                    </c:otherwise>
                </c:choose>
                <form:form action="${pageContext.request.contextPath}/trainer/create" 
                           method="POST" modelAttribute="trainer">
                    <form:hidden path="id"/>
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Trainer Form</div>
                        </div>
                        <div class="panel-body">
                            <table class="table table-striped table-bordered">
                                <tr>
                                    <th> First Name: <form:input path = "firstName"/></th>
                                    <form:errors path="firstName"/>
                                <br>
                                <th> Last Name:  <form:input path = "lastName"/></th>
                                <form:errors path="lastName"/>
                                <br>
                                <th> Subject:    <form:input path = "subject"/></th>
                                </tr>
                            </table>
                            <br>

                            <input type="submit" value="Submit" class="btn btn-primary">
                        </div>
                    </div>

                </form:form>
                <br>
                <a href="${pageContext.request.contextPath}/trainer/list">Back to List</a>

                </body>
                </html>
