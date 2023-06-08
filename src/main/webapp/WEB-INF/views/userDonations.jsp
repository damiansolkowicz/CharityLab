<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="headerloggedin.jsp" %>
<section>
    <div class="table-container">
    <table class="table-section">
        <tr>
            <th>Ilość</th>
            <th>Instytucja</th>
            <th>Data Odbioru</th>
            <th>Akcja</th>
        </tr>
        <c:forEach items="${donations}" var="donation">
            <tr>
                <td>${donation.quantity}</td>
                <td>${donation.institution.name}</td>
                <td>${donation.pickUpDate}</td>
                <td><%--<a href="<c:out value="edit?id=${.id}"/>">Edit</a>
                    <a href="<c:out value="delete?id=${institution.id}"/>">Delete</a>
                    <a href="<c:out value="details?id=${institution.id}"/>">Delete</a>--%>
                </td>
            </tr>
        </c:forEach>
    </table>
    </div>
</section>

<%@ include file="footer.jsp" %>
