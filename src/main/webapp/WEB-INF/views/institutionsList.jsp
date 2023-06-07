<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerloggedin.jsp" %>

<section>
    <table>
        <tr>
            <th>Nazwa</th>
            <th>Opis</th>
            <th>Akcja</th>
        </tr>
        <c:forEach items="${institutions}" var="institution">
            <tr>
                <td>${institution.name}</td>
                <td>${institution.description}</td>
                <td><a href="<c:out value="edit?id=${institution.id}"/>">Edit</a>
                    <a href="<c:out value="delete?id=${institution.id}"/>">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</section>

<%@ include file="footer.jsp" %>
