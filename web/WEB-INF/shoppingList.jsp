<%-- 
    Document   : shoppingList
    Created on : 16-Oct-2022, 8:29:01 PM
    Author     : Jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- not working?
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <p>
            Hello, <c:out value="${sessionScope.username}"/><a href ="ShoppingList?action=logout">Logout</a>
        </p>
        
        
        
        <h2>List</h2><br>
    <form action="ShoppingList" method ="post" >
        <bold>Add item:</bold><input type="text" name="item" value="${item}">
        <input type="submit" action="add" value="Add"/>
    </form>
    
    <div>
        <form action="ShoppingList" method ="post" >
            <c:forEach items ="${sessionScope.item}" var="item">
            <input type="radio" name="userItems" value="${item}">
            <c:out value="${item}"></c:out>
            </c:forEach>
            <input type="submit" value="delete" name="delete">
        </form>
    </div>
    
    
    </body>
</html>
