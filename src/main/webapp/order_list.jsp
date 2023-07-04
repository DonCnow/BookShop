
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Mes E-books</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>







<!--header-->
<jsp:include page="header.jsp">
    <jsp:param name="flag" value="5"></jsp:param>
</jsp:include>
<!--//header-->


<!--cart-items-->
<div class="cart-items">
    <div class="container">



        <h2>Mes E-books</h2>

        <table class="table table-bordered table-hover">

            <tr>
                <th width="10%">ID du livre</th>
                <th width="20%">Information du livre</th>
                <th width="30%">Mes informations</th>
                <th width="10%">Statut en cours</th>
                <th width="10%">Heure de la commande</th>
            </tr>

            <c:forEach items="${orderList }" var="order">

                <tr>
                    <td><p>${order.oid }</p></td>
                    <td>
                        <c:forEach items="${order.itemList }" var="item">
                            <p>${item.book.bname }(${item.oiprice }) x ${item.oiamount }</p>
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

                    <td><p>${order.odatetime }</p></td>
                </tr>

            </c:forEach>



        </table>




    </div>
</div>
<!--//cart-items-->






<!--footer-->
<jsp:include page="footer.jsp"></jsp:include>
<!--//footer-->


</body>
</html>
