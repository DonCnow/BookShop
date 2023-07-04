
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Gérer les catégories</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">


    <jsp:include page="header.jsp"></jsp:include>

    <br><br>

    <form class="form-horizontal" action="type_update.action" method="post">
        <input type="hidden" name="btid" value="${param.btid }">
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nom de catégorie</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="btname" value="${param.btname }" required="required">
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
