<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>

<%@ include file="/WEB-INF/sidenav.jsp" %>
<section class="content">
    <h2>Edit Supplier</h2>
    <form:form method="post" modelAttribute="supplier" class="form-section">

        <div>Name: <form:input path="name"/></div>
        <div>Surname: <form:input path="surname"/></div>
        <div>Post Code: <form:input path="postCode"/></div>
        <div>City: <form:input path="city"/></div>
        <div>Street: <form:input path="street"/></div>
        <div>Flat number: <form:input path="flatNumber"/></div>
        <div>Phone number: <form:input path="phoneNumber"/></div>
        <div>Email: <form:input path="email"/></div>
        <div>Pesel: <form:input path="pesel"/></div>
        <form:hidden path="id"/>
        <input type="submit" value="Edit supplier">
    </form:form>
<br>

</section>
<%@ include file="/WEB-INF/footer.jsp" %>
