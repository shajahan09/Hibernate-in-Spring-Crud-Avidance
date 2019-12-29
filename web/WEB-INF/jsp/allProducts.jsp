<%-- 
    Document   : allProducts
    Created on : Nov 5, 2019, 6:16:28 PM
    Author     : J2EE
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1 align="center">Products List:</h1>
        <table  border="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Quantity</th>
                <th>Price</th>
                <th colspan="2">Action</th>
            </tr>
            <c:forEach items="${products}" var="product">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.qty}</td>
                <td>${product.price}</td>
                <td><a href="update/${product.id}">Update</a></td>
                <td><a href="removeProduct/${product.id}">Delete</a></td>
            </tr>
            </c:forEach>
            <a href="new"><h4>Add New Product</h4></a>
        </table>
    </body>
</html>
