
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Profil personel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>

<jsp:include page="/header.jsp">
    <jsp:param value="4" name="flag"/>
</jsp:include>
<c:if test="${empty user}"><%response.sendRedirect("index.action");%></c:if>
<!--account-->
<div class="account">
    <div class="container">
        <div class="register">
            <c:if test="${!empty msg }">
                <div class="alert alert-success">${msg }</div>
            </c:if>
            <c:if test="${!empty failMsg }">
                <div class="alert alert-danger">${failMsg }</div>
            </c:if>

            <div class="register-top-grid">
                <p style="text-align: center"></p>
                <div style="height: 50px"></div>
                <h3>Mon profil</h3>
                <form action="change_phone_and_address.action" method="post">
                    <!-- Information personnelle start -->
                    <input type="hidden" name="uid" value="${user.uid}"/>
                    <h4>Information de commande</h4>
                    <div class="input">
                        <span>Information d'étudiant<label></label></span>
                        <input type="text" name="urealname" value="${user.urealname }" readonly="readonly" />
                    </div>
                    <div class="input">
                        <span>Téléphone</span>
                        <input type="text" name="uphone" value="${user.uphone }" placeholder="Téléphone est obligatoire">
                    </div>
                    <div class="input">
                        <span>Adresse e-mail</span>
                        <input type="text" name="uaddress" value="${user.uaddress }" placeholder="Adresse e-mail est obligatoire">
                    </div>
                    <div class="register-but text-center">
                        <input type="submit" value="Confirmer">
                    </div>
                    <!-- Information de commande end -->
                </form>
                <hr>
                <form action="change_password.action" method="post">
                    <input type="hidden" name="uid" value="${user.uid}"/>
                    <h4>Sécurité</h4>
                    <div class="input">
                        <span>Mot de passe d'origine</span>
                        <input type="password" name="oldupwd" placeholder="Votre mot de passe d'origine est obligatoire">
                    </div>
                    <div class="input">
                        <span>Nouveau mot de passe</span>
                        <input type="password" name="upwd" placeholder="Votre nouveau mot de passe est obligatoire">
                    </div>
                    <div class="clearfix"> </div>
                    <div class="register-but text-center">
                        <input type="submit" value="Confirmer">
                    </div>
                </form>
            </div>

            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--//account-->




<jsp:include page="/footer.jsp"></jsp:include>


</body>
</html>