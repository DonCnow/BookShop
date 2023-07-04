
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Gérer les livres</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<div class="container-fluid">

    <jsp:include page="/admin/header.jsp"></jsp:include>

    <br><br>
    <form class="form-horizontal" action="book_update.action" method="post" enctype="multipart/form-data">
        <input type="hidden" name="bid" value="${g.bid }"/>
        <input type="hidden" name="bcover" value="${g.bcover }"/>
        <input type="hidden" name="bimage1" value="${g.bimage1 }"/>
        <input type="hidden" name="bimage2" value="${g.bimage2 }"/>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nom du livre</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bname" value="${g.bname}" required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">ID du livre</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bisbn"  value="${g.bisbn}" required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Enseignant</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bauthor"  value="${g.bauthor}" required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Date de publication</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bpublisher"  value="${g.bpublisher}" required="required">
            </div>
        </div>
        <div class="form-group">
            <label for="input_file" class="col-sm-1 control-label">Photo d'e-book</label>
            <div class="col-sm-6"><img src="../${g.bcover }" width="100" height="100"/>
                <input type="file" name="bcover"  id="input_file" required="required">Taille recommandée: 500 * 500
            </div>
        </div>
        <div class="form-group">
            <label for="input_file" class="col-sm-1 control-label">Photo de l'auteur</label>
            <div class="col-sm-6"><img src="../${g.bimage1 }" width="100" height="100"/>
                <input type="file" name="bimage1"  id="input_file" required="required">Taille recommandée: 500 * 500
            </div>
        </div>
        <div class="form-group">
            <label for="input_file" class="col-sm-1 control-label">Photo du contenu</label>
            <div class="col-sm-6"><img src="../${g.bimage2 }" width="100" height="100"/>
                <input type="file" name="bimage2"  id="input_file" required="required">Taille recommandée: 500 * 500
            </div>
        </div>
        <div class="form-group">
            <label for="select_topic" class="col-sm-1 control-label">Catégorie</label>
            <div class="col-sm-6">
                <select class="form-control" id="select_topic" name="btid">

                    <c:forEach items="${bookTypes }" var="t">
                        <option <c:if test="${t.btid==g.btid }">selected="selected"</c:if> value="${t.btid }">${t.btname }</option>
                    </c:forEach>

                </select>
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Nombre de prêts</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bstock" value="${g.bstock}">
            </div>
        </div>
        <div class="form-group">
            <label for="input_name" class="col-sm-1 control-label">Information</label>
            <div class="col-sm-6">
                <input type="text" class="form-control" id="input_name" name="bmark" value="${g.bmark}">
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
