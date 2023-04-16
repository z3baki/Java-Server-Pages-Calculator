<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : response
    Created on : Apr 16, 2023
    Author     : SebastianV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="mybean" scope="session" class="model.Calculatorname" />
        <jsp:useBean id="clock" class="java.util.Date"/>

        <jsp:setProperty name="mybean" property="name"/>
        <jsp:setProperty name="mybean" property="ano" />
        <h1> Hola
            <jsp:useBean id="cal" class="java.util.GregorianCalendar" />

                <c:set var="hour" value="${cal.time.hours}" />

                <c:if test="${hour >=0 && hour <=11}">
                    <c:out value="Buenos dias" />
                </c:if>
                <c:if test="${hour >=12 && hour <=17}">
                    <c:out value="Buenas tardes" />
                </c:if>
                <c:if test="${hour >=18 && hour <=23}">
                    <c:out value="Buenas noches" />
                </c:if>
                <jsp:getProperty name="mybean" property="name" /> ,su edad es: <jsp:getProperty name="mybean" property="ano" /></h1>
    </body>
</html>
