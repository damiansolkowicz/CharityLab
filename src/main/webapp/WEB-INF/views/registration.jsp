<%@ include file="/WEB-INF/headerNotLoggedIn.jsp" %>
<body>
<section class="form-section">

    <form:form method="post" modelAttribute="user" class="form-section">
        <h2 style="position: sticky">Add user</h2>
        <div>First Name: <form:input path="firstName"/></div>
        <div>Last Name: <form:input path="lastName"/></div>
        <div>Email: <form:input path="email"/></div>
        <div>Password: <form:input path="password" type="password"/></div>
        <input type="submit" value="Add user">
    </form:form>
</section>

</body>
</html>


</main>
<%@ include file="/WEB-INF/footer.jsp" %>
