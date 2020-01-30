<%-- 
    Document   : listTrainer
    Created on : 9 Δεκ 2019, 9:42:26 μμ
    Author     : chris
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                <h1>Trainers List</h1>
                <hr>

                <a href="${pageContext.request.contextPath}/trainer/create">
                    <input type="button" value="Add Trainer" class="btn btn-success"/></a>
                <a href="${pageContext.request.contextPath}/">
                    <input type="button" value="Home" class="btn btn-primary"/></a>  
                    <br/><br/>
                    <form:form action="${pageContext.request.contextPath}/trainer/search" method="GET">

                    Search Name: <input type="text" name="searchName" size="8">
                    <input type="submit" value="search">

                </form:form>
            <br/><br/>
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <div class="panel-title">Trainers</div>
                    </div>
                    <div class="panel-body">
                        <table class="table table-striped table-bordered">
                            <tr>
                                <th class="text-center">#ID</th>
                                <th class="text-center">First Name</th>
                                <th class="text-center">Last Name</th>
                                <th class="text-center">Subject</th>
                                <th colspan="2" class="text-center">Actions</th>
                            </tr>
                            <c:forEach items="${listOfTrainers}" var="t">
                                <c:url var="deleteLink" value="/trainer/delete">
                                    <c:param name="trainerId" value="${t.id}"/>
                                </c:url>
                                <c:url var="updateLink" value="/trainer/update">
                                    <c:param name="trainerId" value="${t.id}"/>
                                </c:url>

                                <tr>
                                    <td class="text-center">${t.id}</td>
                                    <td class="text-center">${t.firstName}</td>
                                    <td class="text-center">${t.lastName}</td>
                                    <td class="text-center">${t.subject}</td>
                                    <td class="text-center">
                                        <a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this Trainer?')))
                                                        return false"><input type="button" value="Delete" class="btn btn-danger"/>
                                        </a>
                                    </td>
                                    <td class="text-center">
                                        <a href="${updateLink}"><input type="button" value="Update" class="btn btn-info"/></a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
