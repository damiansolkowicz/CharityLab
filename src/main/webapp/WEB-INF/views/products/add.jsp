<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>

<main>
    <nav class="side-menu">
        <ul>
            <li><a href="/supplier/list">Lista Dostawców</a></li>
            <li><a href="/products/list">Lista Dostaw</a></li>
            <li><a href="/supplier/add">Dodaj Dostawcę</a></li>
            <li><a href="/products/add">Dodaj Dostawę</a></li>
            <br>
            <li>Wyświetl dla producenta:</li>
            <br>
            <li>Wybi</li>
        </ul>
    </nav>
    <section class="form-section">
        <h2>Add new supply</h2>
        <form:form method="post" modelAttribute="products" class="form-section">

            <div>Product Name: <form:input path="name"/></div>
            <div>Unit: <form:input path="unit"/></div>
            <div>Price: <form:input path="price"/></div>
            <div>Supplier Name: <form:select path="supplier" items="${suppliers}"  itemLabel="fullName" itemValue="id"/></div><br>
            <input type="submit" value="Add products">
        </form:form>
    </section>



</main>
<%@ include file="/WEB-INF/footer.jsp" %>
