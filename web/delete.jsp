<%-- 
    Document   : delete
    Created on : Nov 7, 2021, 4:49:55 PM
    Author     : poramet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DELETE PAGE</title>
    </head>
    <body>
        <h1>DELETE STUDENT</h1><br>
        <form name="deleteStudent" action="delete" method="POST">
            ID : <input type="text" name="id" value="" size="20" />
            <br>
            <input type="submit" value="send" name="submit" />
        </form>
        <br>
        <a href="index.html">STUDENT TITLE</a>    
    </body>
</html>
