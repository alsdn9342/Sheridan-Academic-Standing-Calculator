<%-- 
    Document   : viewAllGrades
    Created on : Nov. 1, 2020, 10:34:22 p.m.
    Author     : Minwoo Park
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Grade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Grades</h1>
        <%
            ArrayList<Grade> grades = (ArrayList<Grade>) session.getAttribute("grades");
            Grade description = new Grade();
            double totalGP = 0;
            

            if (grades == null || grades.size() == 0) {%>
        No course
        <% } else {%>
        <ul>
            <%
                for (Grade grade : grades) {
            %>
            <li><%=grade.getGradePoint()%></li>
                <%
                        if (grade.getGradePoint().equals("A+ (90-100%)") || grade.getGradePoint().equals("A (80-89%)")) {
                            totalGP += 4;
                        } else if (grade.getGradePoint().equals("B+ (75-79%)")) {
                            totalGP += 3.5;
                        } else if (grade.getGradePoint().equals("B  (70-74%)")) {
                            totalGP += 3.5;
                        } else if (grade.getGradePoint().equals("B+ (75-79%)")) {
                            totalGP += 3;
                        } else if (grade.getGradePoint().equals("C+ (65-69%)") || grade.getGradePoint().equals("C  (60-64%)")) {
                            totalGP += 2;
                        } else if (grade.getGradePoint().equals("D  (50-59%)")) {
                            totalGP += 1;
                        } else {
                            totalGP += 0;
                        }

                        double rangeOfGPA = totalGP / grades.size();
                        
                        if (3.8 <= rangeOfGPA && rangeOfGPA <= 4) {
                            description.setLetterDescription("Sheridan Scholar");
                        } else if (3.5 <= rangeOfGPA && rangeOfGPA < 3.8) {
                            description.setLetterDescription("Honours");
                        } else if (2 <= rangeOfGPA && rangeOfGPA < 3.5) {
                            description.setLetterDescription("Good");
                        } else if (1.8 <= rangeOfGPA && rangeOfGPA < 2) {
                            description.setLetterDescription("Conditional Pass");
                        } else if (1.2 <= rangeOfGPA && rangeOfGPA < 1.8) {
                            description.setLetterDescription("Academic Probation");
                        } else {
                            description.setLetterDescription("Cannot Continue");
                        }

                    } %>         
        </ul>       
        <%
            }
        %>  

        <%
            if(totalGP != 0){
            out.println("Your Acamedic Standing is: " + description.getLetterDescription());
        }%>
        <br><a href="deleteCourseServelet">Start Over</a>






    </body>
</html>
