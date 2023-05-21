<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>

<%@ include file="/WEB-INF/sidenav.jsp" %>
<section class="content">
    <h2>Edit Supplier</h2>
    <form:form method="post" modelAttribute="unit" class="form-section">
        <div>Full Name: <form:input path="fullName"/></div>
        <div>Abbreviation: <form:input path="abbreviation"/></div>
        <form:hidden path="id"/>
        <input type="submit" value="Change unit">
    </form:form>
</section>
<%@ include file="/WEB-INF/footer.jsp" %>
