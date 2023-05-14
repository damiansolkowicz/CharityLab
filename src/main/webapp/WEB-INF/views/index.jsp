<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>
<%@ include file="/WEB-INF/sidenav.jsp" %>
    <section class="content">
        <h2>Ostatnio zakupione produkty:</h2>
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
                <c:forEach items="${products}" var="product" end="10">
                    <tr>
                        <td><c:out value="${product.supplier.name}"/></td>
                        <td><c:out value="${product.supplier.surname}"/></td>
                        <td><c:out value="${product.name}"/></td>
                        <td><c:out value="${product.price}"/></td>
                        <td><c:out value="${product.unit.name}"/></td>
                        <td><a href="<c:out value="products/edit?id=${product.id}"/>">Edit</a>
                            <a href="<c:out value="products/delete?id=${product.id}"/>">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
        </table>

        <div class="button-section">

            <button> <a href="/products/add">Add supply</a></button>
        </div>

    </section>
</main>
<%@ include file="/WEB-INF/footer.jsp" %>
