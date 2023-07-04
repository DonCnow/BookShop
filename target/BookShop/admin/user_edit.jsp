
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Modifier les étudiants</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>

    <br><br>

    <form class="form-horizontal" action="user_update.action" method="post">
        <input type="hidden" name="uid" value="${u.uid }">
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nom du compte</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" value="${u.uname }" readonly="readonly">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nom réel</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" value="${u.urealname }"  readonly="readonly">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Numéro téléphone</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="uphone" value="${u.uphone }">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Adresse E-mail</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="uaddress" value="${u.uaddress }">
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
