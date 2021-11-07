<%-- 
    Document   : insert
    Created on : Nov 7, 2021, 3:02:11 AM
    Author     : poramet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INSERT PAGE</title>
    </head>
    <body>
        <h1>INSERT STUDENT</h1><br>
        <form name="insertStudent" action="insert" method="POST">
            ID : <input type="text" name="id" value="" size="20" />
            <br>
            Name : <input type="text" name="name" value="" size="50" />
            <br>
            GPA : <input type="text" name="gpa" value="" size="10" />
            <br>
            <input type="submit" value="send" name="submit" />
        </form>
        <br>
        <a href="index.html">STUDENT TITLE</a>
    </body>
</html>
