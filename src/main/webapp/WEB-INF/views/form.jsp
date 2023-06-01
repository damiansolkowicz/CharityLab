<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>
<section>
<form:form method="post" modelAttribute="donation" class="form-section">
<form:checkboxes path="category"
                 items="${categories}" itemLabel="name" itemValue="id"/>
<form:select path="institution" items="${institutions}" itemLabel="name" itemValue="id"/>

<form:input path="zipCode" />
<form:input path="street" />
<form:input path="city"/>
<form:input path="quantity"/>
<form:textarea path="pickUpComment"/>
<form:input type="date" path="pickUpDate"/>
<form:input type="time" path="pickUpTime" />
</section>


    <input type="submit" value="Wyślij">
</body>
</html>
</form:form>
<%@ include file="footer.jsp" %>
<script src="<c:url value="resources/js/app.js"/>"></script>