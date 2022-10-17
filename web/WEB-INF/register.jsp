<%-- 
    Document   : register.jsp
    Created on : 16-Oct-2022, 8:28:30 PM
    Author     : Jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping list</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        
        <form action="ShoppingList" method="post">
            <bold>Username:</bold><input type="text" name="username" value="${username}"/>
            <input type="submit" value ="Register name" name="action" action="register">
            
        </form>
    </body>
</html>
