
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Réinitialisation</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>

    <br><br>

    <form class="form-horizontal" action="change_password.action" method="post">
        <input type="hidden" name="uid" value="${param.uid }">
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nom du compte</label>
            <div class="col-sm-5">${param.uname }</div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nom réel</label>
            <div class="col-sm-5">${param.urealname }</div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Mot de passe</label>
            <div class="col-sm-6">
                <input type="password" class="form-control" id="input_name" name="upwd" value="" required="required">
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
