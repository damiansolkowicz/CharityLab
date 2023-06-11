<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>


<section class="login-page">
    <h2>Załóż konto</h2>
<form:form method="post" modelAttribute="user" class="form-section">
        <div class="form-group">
            <form:input path="firstName" type="text" name="firstName" placeholder="First Name" />
        </div>
    <div class="form-group">
        <form:input path="lastName" type="name" name="lastName" placeholder="Last Name" />
    </div>
    <div class="form-group">
        <form:input path="email" type="email" name="email" placeholder="Email" />
    </div>
    <div class="form-group">
        <form:input path="password" type="password" name="password" placeholder="Password" />
    </div>
        <div class="form-group form-group--buttons">
            <a href="/login" class="btn btn--without-border">Zaloguj się</a>
            <button class="btn" type="submit">Załóż konto</button>
        </div>
</form:form>
</section>



<%@ include file="footer.jsp" %>

<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
