
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>

<!--header-->
<jsp:include page="/header.jsp">
    <jsp:param name="flag" value="10"></jsp:param>
</jsp:include>
<!--//header-->


<!--account-->
<div class="account">
    <div class="container">
        <div class="register">
            <c:if test="${!empty msg }">
                <div class="alert alert-danger">${msg }</div>
            </c:if>
            <form action="register.action" method="post">
                <div class="register-top-grid">
                    <h3>Register now!</h3>
                    <div class="input">
                        <span>Nom du compte <label style="color:red;">*</label></span>
                        <input type="text" name="uname" placeholder="Votre nom du compte est obligatoire" required="required">
                    </div>
                    <div class="input">
                        <span>Nom réel <label style="color:red;">*</label></span>
                        <input type="text" name="urealname" placeholder="Votre nom réel est obligatoire" required="required">
                    </div>
                    <div class="input">
                        <span>Mot de passe <label style="color:red;">*</label></span>
                        <input type="password" name="upwd" placeholder="Entrez votre mot de passe" required="required">
                    </div>
                    <div class="input">
                        <span>Numéro téléphone<label></label></span>
                        <input type="text" name="uphone" placeholder="Entrez votre numéro téléphone">
                    </div>
                    <div class="input">
                        <span>Adresse e-mail<label></label></span>
                        <input type="text" name="uaddress" placeholder="Entrez votre adresse e-mail">
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="register-but text-center">
                    <input type="submit" value="Confirmer">
                    <div class="clearfix"> </div>
                </div>
            </form>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//account-->






<!--footer-->
<jsp:include page="/footer.jsp"></jsp:include>
<!--//footer-->


</body>
</html>