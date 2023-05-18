<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>

<main>
    <%@ include file="/WEB-INF/sidenav.jsp" %>
    <section class="content">
        <h2>All suppliers</h2>
        <table>
            <thead>
            <tr>
                <th>Name</th>
                <th>Surname</th>
                <th>City</th>
                <th>Email</th>
                <th>Pesel</th>
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
                    <td><c:out value="${supplier.pesel}"/></td>
                    <td><a href="<c:out value="edit?id=${supplier.id}"/>">Edit</a>
                        <a href="<c:out value="delete?id=${supplier.id}"/>">Delete</a>
                        <a href="<c:out value="supplies?supplierId=${supplier.id}"/>">All supplies</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
        </table>


    </section>
</main>
<%@ include file="/WEB-INF/footer.jsp" %>