<%-- 
    Document   : newPage
    Created on : Nov 6, 2019, 7:06:36 PM
    Author     : Java
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert</title>
    </head>
    <body>
        <h1>Add Product</h1>
        <form action="addProduct" method="POST">
            <table border="1px solid black">
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" placeholder="Enter product name" /></td>
                </tr>
                <tr>
                    <td>Quantity</td>
                    <td><input type="number" name="qty" placeholder="Enter product Quantity" /></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td><input type="number" name="price" placeholder="Price" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit" /></td>
                    <td><input type="reset" value="Reset" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
