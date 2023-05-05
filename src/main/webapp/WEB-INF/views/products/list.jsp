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


        </ul>
    </nav>
    <section class="content">
        <h2>All supplies</h2>
        <table>
            <table>
                <thead>
                <tr>
                    <th>Supplier Name</th>
                    <th>Supplier Surname</th>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Unit</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td><c:out value="${product.supplier.name}"/></td>
                        <td><c:out value="${product.supplier.surname}"/></td>
                        <td><c:out value="${product.name}"/></td>
                        <td><c:out value="${product.price}"/></td>
                        <td><c:out value="${product.unit}"/></td>
                        <td><a href="<c:out value="edit?id=${product.id}"/>">Edit</a>
                            <a href="<c:out value="delete?id=${product.id}"/>">Delete</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>


    </section>
</main>
<%@ include file="/WEB-INF/footer.jsp" %>
