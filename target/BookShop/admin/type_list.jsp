
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Séries des catégories</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>

    <br>

    <div>
        <form class="form-inline" method="post" action="type_add.action">
            <input type="text" class="form-control" id="input_name" name="btname" placeholder="Entrez la nouvelle catégorie" required="required" style="width: 500px">
            <input type="submit" class="btn btn-warning" value="Ajouter une catégorie"/>
        </form>
    </div>
    <br/>
    <c:if test="${!empty msg }">
        <div class="alert alert-success">${msg }</div>
    </c:if>
    <c:if test="${!empty failMsg }">
        <div class="alert alert-danger">${failMsg }</div>
    </c:if>
    <br>

    <table class="table table-bordered table-hover">

        <tr>
            <th width="5%">ID de la catégorie</th>
            <th width="10%">Nom de la catégorie</th>
            <th width="10%">Option</th>
        </tr>

        <c:forEach items="${list }" var="t">
            <tr>
                <td><p>${t.btid }</p></td>
                <td><p>${t.btname }</p></td>
                <td>
                    <a class="btn btn-primary" href="type_edit.jsp?btid=${t.btid}&btname=${t.btname}">Modifier</a>
                    <a class="btn btn-danger" href="type_delete.action?btid=${t.btid}">Supprimer</a>
                </td>
            </tr>
        </c:forEach>


    </table>

</div>
</body>
</html>
