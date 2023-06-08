<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="headerloggedin.jsp" %>


<section class="login-page">
    <h2>Załóż konto</h2>
<form:form method="post" modelAttribute="user" class="form-section">
        <div class="form-group">
            <form:input path="name" type="text" name="firstName" placeholder="First Name" />
        </div>
    </div>
    <div class="form-group">
        <form:input path="email" type="email" name="email" placeholder="Email" />
    </div>
        <div class="form-group">
            <form:input path="password" type="password" name="password" placeholder="Hasło" />
        </div>


        <div class="form-group form-group--buttons">
            <button class="btn" type="submit">Aktualizuj</button>
        </div>
</form:form>
</section>



<%@ include file="footer.jsp" %>

<script src="<c:url value="resources/js/app.js"/>"></script>
</body>
</html>
