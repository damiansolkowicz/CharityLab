<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>

<main>
    <nav class="side-menu">
        <ul>
            <li><a href="/supplier/list">Lista Dostawców</a></li>
            <li><a href="/products/list">Lista Produktów</a></li>
            <li><a href=/supplier/add>Dodaj dostawcę</a></li>
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
        <h2>Lista dostawców</h2>
        <table>
            <thead>
            <tr>
                <th>Name</th>
                <th>Surname</th>
                <th>City</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${suppliers}" var="supplier">
            <tr>
                <td><c:out value="${supplier.name}"/></td>
                <td><c:out value="${supplier.surname}"/></td>
                <td><c:out value="${supplier.city}"/></td>
                <td><c:out value="${supplier.email}"/></td>
                <td><a href="<c:out value="edit?id=${supplier.id}"/>">Edit</a>
                    <a href="<c:out value="delete?id=${supplier.id}"/>">Delete</a>
                </td>
            </tr>
           </c:forEach>

            </tbody>
        </table>


    </section>
</main>
<%@ include file="/WEB-INF/footer.jsp" %>