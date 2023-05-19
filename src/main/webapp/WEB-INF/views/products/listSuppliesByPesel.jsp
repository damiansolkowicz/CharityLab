<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/headerNotLoggedIn.jsp" %>
<body>
<section class="content">
    <c:set var="firstProduct" value="${products[0]}"/>
    <h2>All supplies for <c:out value="${firstProduct.supplier.fullName}"/></h2>
    <table id="suppliesTable">
        <thead>
        <tr>
            <th>lp.</th>
            <th>Date</th>
            <th>Product</th>
            <th>Price (zł)</th>
            <th>Quantity</th>
            <th>To pay (zł)</th>
            <th>Unit</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="product" varStatus="loop">
            <tr>
                <td><c:out value="${loop.index+1}"/></td>
                <td><c:out value="${product.localDate}"/></td>
                <td><c:out value="${product.name}"/></td>
                <td><c:out value="${product.price}"/></td>
                <td><c:out value="${product.quantity}"/></td>
                <td><c:out value="${product.toPay}"/></td>
                <td><c:out value="${product.unit.name}"/></td>
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
</body>
<%@ include file="/WEB-INF/footer.jsp" %>
