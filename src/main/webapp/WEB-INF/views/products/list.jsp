<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>

<main>
    <nav class="side-menu">
        <ul>
            <li><a href="/supplier/list">Lista Dostawców</a></li>
            <li><a href="/products/list">Lista Produktów</a></li>
            <li><a href="/supplier/add">Dodaj dostawcę</a></li>
            <li><a href="/products/add">Dodaj produkt</a></li>
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
        <h2>Zakupione produkty:</h2>
        <table>
            <thead>
            <tr>
                <th>Products</th>
                <th>Unit</th>
                <th>Price</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
            <tr>
                <td><c:out value="${product.name}"/></td>
                <td><c:out value="${product.unit}"/></td>
                <td><c:out value="${product.price}"/></td>

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
