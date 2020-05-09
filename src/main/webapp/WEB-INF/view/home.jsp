<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>

    <head>
        <title>luv2code Company Home Page</title>
    </head>

    <body>
        <h2>luv2code Company Home Page</h2>
        <hr>
            <p> Welcome to the luv2code company home page!</p>

        <hr>
            <p>
                User: <security:authentication property="principal.username"></security:authentication>
                <br><br>

                Role(s): <security:authentication property="principal.authorities"></security:authentication>

                <hr>
                    <p>
                        <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
                        (Only for Managers)
                    </p>
                <hr>

                <hr>
                <p>
                    <a href="${pageContext.request.contextPath}/system">IT Systems Meeting</a>
                    (Only for Admins)
                </p>
                <hr>
            </p>
        <hr>

            <form:form action="${pageContext.request.contextPath}/logout" method="post">
                <input type="submit" value="Logout" />
            </form:form>
    </body>

</html>
