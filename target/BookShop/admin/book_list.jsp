
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Liste des livres</title>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">

    <jsp:include page="header.jsp"></jsp:include>

    <div class="text-right"><a class="btn btn-warning" href="book_add.jsp">Ajouter un livre</a></div>

    <br>

    <ul role="tablist" class="nav nav-tabs">
        <li <c:if test="${rtype==0 }">class="active"</c:if> role="presentation"><a href="book_list.action?pageNumber=1&rtype=0">Tous les livres</a></li>
        <li <c:if test="${rtype==1 }">class="active"</c:if> role="presentation"><a href="book_list.action?pageNumber=1&rtype=1">Les livres dans la bannière</a></li>
        <li <c:if test="${rtype==2 }">class="active"</c:if> role="presentation"><a href="book_list.action?pageNumber=1&rtype=2">Les livres recommandé</a></li>
        <li <c:if test="${rtype==3 }">class="active"</c:if> role="presentation"><a href="book_list.action?pageNumber=1&rtype=3">Nouveaux livres</a></li>
    </ul>





    <br>

    <table class="table table-bordered table-hover">

        <tr>
            <th width="5%">ID du livre</th>
            <th width="10%">Photo du livre</th>
            <th width="10%">Nom d'auteur</th>
            <th width="20%">Information du livre</th>
            <th width="10%">Catégorie</th>
            <th width="25%">Confirmer</th>
        </tr>

        <c:forEach items="${p.list }" var="g">
            <tr>
                <td><p>${g.bid }</p></td>
                <td><p><a href="#" target="_blank"><img src="../${g.bcover}" width="100px" height="100px"></a></p></td>
                <td><p><a href="#" target="_blank">${g.bname}</a></p></td>
                <td><p>${g.bmark}</p></td>
                <td><p>${g.btname}</p></td>
                <td>
                    <p>
                        <c:choose>
                            <c:when test="${g.isScroll }">
                                <a class="btn btn-info" href="book_change.action?bid=${g.bid}&rtype=1&method=remove&page=${rtype}">Supprimer une bannière</a>
                            </c:when>
                            <c:otherwise>
                                <a class="btn btn-primary" href="book_change.action?bid=${g.bid}&rtype=1&method=add&page=${rtype}">Ajouter une bannière</a>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${g.isHot }">
                                <a class="btn btn-info" href="book_change.action?bid=${g.bid}&rtype=2&method=remove&page=${rtype}">Supprimer de recommandation </a>
                            </c:when>
                            <c:otherwise>
                                <a class="btn btn-primary" href="book_change.action?bid=${g.bid}&rtype=2&method=add&page=${rtype}">Ajouter à la recommandation</a>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${g.isNew }">
                                <a class="btn btn-info" href="book_change.action?bid=${g.bid}&rtype=3&method=remove&page=${rtype}">Supprimer de nouveau livre</a>
                            </c:when>
                            <c:otherwise>
                                <a class="btn btn-primary" href="book_change.action?bid=${g.bid}&rtype=3&method=add&page=${rtype}">Ajouter de nouveau iivre</a>
                            </c:otherwise>
                        </c:choose>

                    </p>
                    <a class="btn btn-success" href="book_edit_show.action?bid=${g.bid }">Modifier</a>
                    <a class="btn btn-danger" href="book_delete.action?bid=${g.bid}&rtype=${rtype}">Supprimer</a>
                </td>
            </tr>
        </c:forEach>


    </table>

    <br>
    <jsp:include page="/page.jsp">
        <jsp:param value="book_list.action" name="url"/>
        <jsp:param value="&rtype=${rtype }" name="param"/>
    </jsp:include>
    <br>
</div>
</body>
</html>
