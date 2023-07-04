
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ajouter à la recommandation</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>

    <br><br>
    <form class="form-horizontal" action="book_add.action" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nom du livre</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bname"  required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">ID du livre</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bisbn"  required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Auteur</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bauthor"  required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Date de publication</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bpublisher"  required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="input_file" class="col-sm-1 control-label">Photo d'E-book</label>
            <div class="col-sm-6">
                <input type="file" name="bcover"  id="input_file" required="required">Taille recommandée: 500 * 500
            </div>
        </div>
        <div class="form-group">
            <label for="input_file" class="col-sm-1 control-label">Photo d'auteur</label>
            <div class="col-sm-6">
                <input type="file" name="bimage1"  id="input_file" required="required">Taille recommandée: 500 * 500
            </div>
        </div>
        <div class="form-group">
            <label for="input_file" class="col-sm-1 control-label">Photo du contenu</label>
            <div class="col-sm-6">
                <input type="file" name="bimage2"  id="input_file" required="required">Taille recommandée: 500 * 500
            </div>
        </div>
        <div class="form-group">
            <label for="select_topic" class="col-sm-1 control-label">Catégorie</label>
            <div class="col-sm-6">
                <select class="form-control" id="select_topic" name="btid">

                    <c:forEach items="${bookTypes }" var="t">
                        <option value="${t.btid }">${t.btname }</option>
                    </c:forEach>


                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nombre de prêts</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bstock" >
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Information du livre</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bmark" >
            </div>
        </div>


        <div class="form-group">
            <div class="col-sm-offset-1 col-sm-10">
                <button type="submit" class="btn btn-success">Confirmer la modification</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
