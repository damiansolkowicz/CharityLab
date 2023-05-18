<%@ include file="/WEB-INF/headerNotLoggedIn.jsp" %>
<body>
<main>
    <section class="content">

        <form action="/login" method="post">
            <h2>Log in:</h2>
            <p>
                email: <input type="text" name="email">
            </p>
            <p>
                pass :<input type="password" name="password">
            </p>
            <button type="submit">login</button>
            <a href="/registration">Register</a>
        </form>
    </section>
</main>
<%@ include file="/WEB-INF/footer.jsp" %>
