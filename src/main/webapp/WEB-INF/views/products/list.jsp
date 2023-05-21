<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>
<%@ include file="/WEB-INF/sidenav.jsp" %>
<section class="content">
    <h2>All supplies</h2>
    <table>
        <table>
            <thead>
            <tr>
                <th>lp.</th>
                <th>Date</th>
                <th>Supplier Name</th>
                <th>Supplier Surname</th>
                <th>Product</th>
                <th>Price (zł)</th>
                <th>Quantity</th>
                <th>To pay (zł)</th>
                <th>Unit</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product" varStatus="loop">
                <tr>
                    <td><c:out value="${loop.index+1}"/></td>
                    <td><c:out value="${product.localDate}"/></td>
                    <td><c:out value="${product.supplier.name}"/></td>
                    <td><c:out value="${product.supplier.surname}"/></td>
                    <td><c:out value="${product.name}"/></td>
                    <td><c:out value="${product.price}"/></td>
                    <td><c:out value="${product.quantity}"/></td>
                    <td><c:out value="${product.toPay}"/></td>
                    <td><c:out value="${product.unit.abbreviation}"/></td>
                    <td><a href="<c:out value="edit?id=${product.id}"/>">Edit</a>
                        <a href="<c:out value="delete?id=${product.id}"/>">Delete</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <c:set var="totalPriceSum" value="0"/>
        <c:forEach items="${products}" var="product">
            <c:set var="totalPriceSum" value="${totalPriceSum + product.toPay}"/>
        </c:forEach>
        <p>Sum for all supplies: ${totalPriceSum} zł </p>
</section>
</main>
<%@ include file="/WEB-INF/footer.jsp" %>
