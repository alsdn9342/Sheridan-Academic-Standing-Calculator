<%-- 
    Document   : index
    Created on : Nov. 1, 2020, 9:40:47 p.m.
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
        <h1>Sheridan Academic Standing Calculator</h1>
        <br><p>Progress through our program and eligibility for the diploma is
            dependent upon successful completion of ALL required program courses
        in good Academic Standing. This calculator will let you know your Academic Standing based  on the 
        grades of you courses. You will need to enter the grades for all the courses you took</p>
        <br>Click Start to begin
        <br><form action="addCourseGrades.jsp" method="GET">
            <input type="submit" name="start" value="start">
        </form>
        <br> <div>see <a href="http://trantor.sheridanc.on.ca/webct/general/archdept_policies/academic_guidelines.html">academic guidelines</a> for details</div>
    </body>
</html>
