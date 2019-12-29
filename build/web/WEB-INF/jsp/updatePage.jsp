<%-- 
    Document   : updatePage
    Created on : Nov 6, 2019, 7:16:52 PM
    Author     : Java
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${product.name} JSP Page</title>
    </head>
    <body>
        <h1>Update</h1>
        <form action="/EvidenceSpring/updateSubmit" method="POST">
            <table border="1px solid black">
                <tr>
                    <td>ID</td>
                    <td><input type="text" value="${product.id}" name="id"  /></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" value="${product.name}" name="name" placeholder="Enter product name" /></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="number" value="${product.qty}" name="qty" /></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="number" value="${product.price}" name="price" /></td>
                </tr>
                <tr>
                    <td><input type="submit"  value="Submit" /></td>
                    <td><input type="reset" value="Reset" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
