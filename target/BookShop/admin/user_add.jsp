
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Ajouter un étudiant</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">



    <jsp:include page="header.jsp"></jsp:include>
    <c:if test="${!empty msg }">
        <div class="alert alert-danger">${msg }</div>
    </c:if>
    <br><br>
    <form class="form-horizontal" action="user_add.action" method="post">
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nom du compte</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="uname" required="required" />
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nom réel</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="urealname" required="required"/>
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Mot de passe</label>
            <div class="col-sm-6">
                <input type="password" class="form-control" id="input_name" name="upwd" required="required"/>
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Numéro téléphone</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="uphone" />
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Adresse E-mail</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="uaddress"/>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-10">
                <button type="submit" class="btn btn-success">Confirmer la modification</button>
            </div>
        </div>
    </form>

    <span style="color:red;"></span>
</div>
</body>
</html>
