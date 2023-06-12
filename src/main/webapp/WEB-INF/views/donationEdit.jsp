<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="headerloggedin.jsp" %>
</div>
<form:form method="post" modelAttribute="donation" class="form-section">
    Kategoria<br> <form:checkboxes path="category"
                     items="${categories}" itemLabel="name" itemValue="id"/>
    <br>
    Organizacja
    <form:select path="institution" items="${institutions}" itemLabel="name" itemValue="id"/>
    Kod Pocztowy
    <form:input path="zipCode" />
    Ulica
    <form:input path="street" />
    Miasto
    <form:input path="city"/>
    Ilość
    <form:input path="quantity"/>
    Komentarz
    <form:textarea path="pickUpComment"/>
    Data odbioru
    <form:input type="date" path="pickUpDate"/>
    Data odbioru
    <form:input type="time" path="pickUpTime" />
    <form:hidden path="id"/>
    <input type="submit" value="Aktualizuj">
    </section>



    </body>
    </html>
</form:form>
</section>