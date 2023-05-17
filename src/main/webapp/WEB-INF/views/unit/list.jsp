<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/header.jsp" %>

<main>
    <%@ include file="/WEB-INF/sidenav.jsp" %>
    <section class="content">
        <h2>All units</h2>
        <table>
            <thead>
            <tr>
                <th>Lp.</th>
                <th>Name</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${units}" var="unit" varStatus="loop">
            <tr>
                <td><c:out value="${loop.index+1}"/></td>
                <td><c:out value="${unit.name}"/></td>

                <td><a href="<c:out value="/unit/edit?id=${unit.id}"/>">Edit</a>
                    <a href="<c:out value="/unit/delete?id=${unit.id}"/>">Delete</a>
                </td>
            </tr>
           </c:forEach>
            </tbody>
        </table>

        <div class="button-section">

            <button> <a href="/unit/add">Dodaj jednostkę</a></button>
        </div>
    </section>
</main>
<%@ include file="/WEB-INF/footer.jsp" %>