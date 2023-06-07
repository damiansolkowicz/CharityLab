<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>

<section>
   <form:form method="post" modelAttribute="institutions">
       <div> Name<form:input path="name"/></div>
       <div> Description <form:input path="description"/></div>
       <form:hidden path="id"/>
       <input type="submit" value="Dodaj organizacje">
   </form:form>
</section>

<%@ include file="footer.jsp" %>
