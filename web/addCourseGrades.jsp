<%-- 
    Document   : addCourseGrades
    Created on : Nov. 1, 2020, 9:51:06 p.m.
    Author     : Minwoo Park
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="addGradeServlet" method="GET">
            Course Grade <select name="grade">
                <option name="grade" value="A+ (90-100%)"> A+ (90-100%)</option>
                <option name="grade" value="A (80-89%)"> A (80-89%)</option>
                <option name="grade" value="B+ (75-79%)"> B+ (75-79%)</option>
                <option name="grade" value="B  (70-74%)"> B  (70-74%)</option>
                <option name="grade" value="C+ (65-69%)"> C+ (65-69%)</option>
                <option name="grade" value="C  (60-64%)"> C  (60-64%)</option>
                <option name="grade" value="D  (50-59%)"> D  (50-59%)</option>
                <option name="grade" value="F  (0-49%)"> F  (0-49%)</option>
            </select>
            <br><input type="submit" name="action" value="next">
            <input type="submit" name="action" value="done">
                       
        </form>
    </body>
</html>
