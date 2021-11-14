<%-- 
    Document   : confirmUpdate
    Created on : Nov 14, 2021, 10:11:57 PM
    Author     : poramet
--%>
<%@page import="servlet.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirm Update Page</title>
    </head>
    <%Student std = (Student)session.getAttribute("student"); %>
    <body>
        <h1>UPDATE STUDENT</h1><br>
        <form name="updateStudent" action="ConfirmUpdateStudent">
            ID : <%=std.getId()%>
            Name: <input type="text" name="name" value="<%=std.getName()%>" size="40" />
            <br>
            GPA : <input type="text" name="gpa" value="<%=std.getGpa()%>" size="10" />
            <br>
            <input type="submit" value="send" name="submit" />
        </form>
        <br>
        <a href="index.html">STUDENT TITLE</a>
    </body>
</html>
