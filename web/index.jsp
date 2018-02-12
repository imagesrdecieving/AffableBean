<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : index
    Created on : Jan 25, 2018, 1:17:43 AM
    Author     : Anthony Catalano amcatalano@mail.fhsu.edu
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/affablebean.css">
        <title>The Affable Bean</title>
    </head>
    <body>
        <%--<sql:query var="categories" dataSource="jdbc/affablebean">
            SELECT * FROM category
        </sql:query>--%>
        <div id="indexLeftColumn">
                <div id="welcomeText">
                    <p style="font-size: larger">Welcome to the online home of the Affable Bean Green Grocer.</p>

                    <p>Enjoy browsing and learning more about our unique home delivery
                        service bringing you fresh organic produce, dairy, meats, breads
                        and other delicious and healthy items to your doorstep.</p>
                </div>
            </div>

            <div id="indexRightColumn">
                <c:forEach var="category" items="${categories}">
                    <div class="categoryBox">
                        <a href="category?${category.id}">
                            <span class="categoryLabel"></span>
                            <span class="categoryLabelText">${category.name}</span>

                            <img src="${initParam.categoryImagePath}${category.name}.jpg"
                                 alt="${category.name}" class="categoryImage">
                        </a>
                    </div>
                </c:forEach>
            </div>