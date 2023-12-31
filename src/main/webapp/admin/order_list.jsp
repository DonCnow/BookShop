
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Liste des commandes</title>
    <link rel="stylesheet" href="css/bootstrap.css"/>
</head>
<body>
<div class="container-fluid">
    <jsp:include page="header.jsp"></jsp:include>

    <br>
    <ul role="tablist" class="nav nav-tabs">
        <li <c:if test="${ostatus==1 }">class="active"</c:if> role="presentation"><a href="order_list.action?pageNumber=1&ostatus=1">Tous les commandes</a></li>
        <li <c:if test="${ostatus==5 }">class="active"</c:if> role="presentation"><a href="order_list.action?pageNumber=1&ostatus=5">Non-confirmation</a></li>
        <li <c:if test="${ostatus==2 }">class="active"</c:if> role="presentation"><a href="order_list.action?pageNumber=1&ostatus=2">Confirmé</a></li>
        <li <c:if test="${ostatus==3 }">class="active"</c:if> role="presentation"><a href="order_list.action?pageNumber=1&ostatus=3">Emprunté</a></li>
        <li <c:if test="${ostatus==4 }">class="active"</c:if> role="presentation"><a href="order_list.action?pageNumber=1&ostatus=4">Rendu</a></li>
    </ul>

    <br>

    <table class="table table-bordered table-hover">

        <tr>
            <th width="5%">ID du livre</th>
            <th width="15%">Information du livre</th>
            <th width="20%">Information du client</th>
            <th width="10%">Statut en cours</th>
            <th width="10%">Nom du client</th>
            <th width="10%">Heure de la commande</th>
            <th width="10%">Modifier</th>
        </tr>

        <c:forEach items="${p.list }" var="order">
            <tr>
                <td><p>${order.oid }</p></td>

                <td>
                    <c:forEach items="${order.itemList }" var="item">
                        <p>${item.book.bname }(${item.oiprice }) x ${item.oiamount}</p>
                    </c:forEach>
                </td>
                <td>
                    <p>${order.orealname }</p>
                    <p>${order.ophone }</p>
                    <p>${order.oaddress }</p>
                </td>
                <td>
                    <p>
                        <c:if test="${order.ostatus==2 }"><span style="color:red;">Commandé</span></c:if>
                        <c:if test="${order.ostatus==3 }"><span style="color:green;">Emprunté</span></c:if>
                        <c:if test="${order.ostatus==4 }"><span style="color:black;">Terminé</span></c:if>

                    </p>
                </td>

                <td><p>${order.orealname }</p></td>
                <td><p>${order.odatetime }</p></td>
                <td>
                    <c:if test="${order.ostatus==2 }">
                        <a class="btn btn-success" href="order_status_change.action?oid=${order.oid}&ostatus=3">Commandé</a>
                    </c:if>
                    <c:if test="${order.ostatus==3 }">
                        <a class="btn btn-warning" href="order_status_change.action?oid=${order.oid}&ostatus=4">Emprunté</a>
                    </c:if>
                    <a class="btn btn-danger" href="order_delete.action?oid=${order.oid}&ostatus=${ostatus}">Terminé</a>
                </td>
            </tr>
        </c:forEach>


    </table>

    <br>
    <jsp:include page="/page.jsp">
        <jsp:param value="/admin/order_list.action" name="url"/>
        <jsp:param value="&ostatus=${ostatus}" name="param"/>
    </jsp:include>
    <br>
</div>
</body>
</html>