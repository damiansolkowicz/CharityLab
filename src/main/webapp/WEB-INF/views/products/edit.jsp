<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>
<%@ include file="/WEB-INF/sidenav.jsp" %>
<section class="content">
    <h2>Edit supply</h2>
    <form:form method="post" modelAttribute="products" class="form-section">
        <div>Date: <form:input path="localDate" type="date"/></div>
        <div>Product Name: <form:input path="name"/></div>
        <div>Unit: <form:select path="unit" items="${units}" itemLabel="name" itemValue="id"/></div>
        <br>
        <div>Price: <form:input path="price"/></div>
        <div>Quantity: <form:input path="quantity"/></div>
        <div>Supplier Name: <form:select path="supplier" items="${suppliers}" itemLabel="fullName"
                                         itemValue="id"/></div>
        <br>
        <form:hidden path="id"/>
        <input type="submit" value="Add products">
    </form:form>


</section>
<%@ include file="/WEB-INF/footer.jsp" %>
