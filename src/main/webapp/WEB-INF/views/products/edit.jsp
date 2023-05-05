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
            <li><select>
                <option><a href="#">Jan Nowak</a></option>
                <option><a href="#">Jan Kowalski</a></option>
                <option><a href="#">Damian Sołkowicz</a></option>
                <option><a href="#">Jan Pączek</a></option>
                <option><a href="#">Polska Papryka sp. z o.o. </a></option>

            </select><li>

        </ul>
    </nav>
    <section class="content">
        <h2>Edit supply</h2>
        <form:form method="post" modelAttribute="products" class="form-section">

        <div>Product Name: <form:input path="name"/></div>
        <div>Unit: <form:input path="unit"/></div>
        <div>Price: <form:input path="price"/></div>
        <div>Supplier Name: <form:select path="supplier" items="${suppliers}"  itemLabel="fullName" itemValue="id"/></div><br>
        <form:hidden path="id"/>
        <input type="submit" value="Add products">
        </form:form>




</main>
<%@ include file="/WEB-INF/footer.jsp" %>
