<%-- 
    Document   : update
    Created on : Nov 7, 2021, 4:21:56 PM
    Author     : poramet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UPDATE PAGE</title>
    </head>
    <body>
        <h1>UPDATE STUDENT</h1><br>
        <form name="updateStudent" action="ConfirmUpdateStudent" method="POST">
            ID : <input type="text" name="id" value="" size="20" />
            <input type="submit" value="next" name="next" />
            <br>
        </form>
        <br>
        <a href="index.html">STUDENT TITLE</a>
    </body>
</html>
