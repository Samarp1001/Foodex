<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
              crossorigin="anonymous">
        <link href="<c:url value="/resources/css/forgot.css" />" rel="stylesheet">
        <title>Set New Password | Foodex</title>
    </head>
    <body>
    <%@ include file="header-bg-dark.jsp"%>
    <div class="main-container1">
        <div class="forgot-pass-div" style="border-radius: 10px;">
            <div align="center">
                <br><br><h3 style="font-weight: 700">Enter New Password</h3><br>
                <form action="create" method="post" id="form">
                    <input class="form-input" type="password" name="a" placeholder="Enter new password" id="pwd">
                    <br>
                    <input class="form-input" type="password" placeholder="Re-enter new password" id="cpwd">
                    <br>
                        <input type="submit" value="Submit" class="btn-primary btn"><br><br>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp"%>

    <script>
        const form = document.getElementById("form");
        form.addEventListener("submit", function(event) {
            const a = document.getElementById("pwd");
            const b = document.getElementById("cpwd");

            if (a.value !== b.value) {
                alert("The passwords don't match");
                event.preventDefault();
            }
        });
    </script>
    </body>
</html>
