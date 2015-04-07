<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>SQL Gateway</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--This JSTL if tag is used to check if the sqlStatement attribute contains
a null value. If so, this code uses a JSTL set tag to set the value of this 
attribute to "select*from User". That way, this SQL statement is
displayed when a user requests this page for the first time in a session --%>
<c:if test="${sqlStatement == null}">
    <c:set var="sqlStatement" value="select * from user;" />
</c:if>
    
<h1>The SQL Gateway</h1>
<p>Enter an SQL statement and click the Execute button.</p>

<p><b>SQL statement:</b></p>
<!-- sqlGateway is mapped in the XML to the SQLGatewayServlet -->
<form action="sqlGateway" method="post">
    <textarea name="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
    <input type="submit" value="Execute">
</form>

<p><b>SQL result:</b></p>
<!-- If the SQL statement returns a result set, this string contains
all the HTML tags needed to display the result within an HTML table.
Or the HTML tag that displays some text that indicates the success
or failure of the SQL statement -->
${sqlResult}


</body>
</html>