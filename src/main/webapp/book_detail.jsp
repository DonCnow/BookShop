
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Information du livre</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <link type="text/css" rel="stylesheet" href="css/flexslider.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
    <script>
        $(function() {
            $('.flexslider').flexslider({
                animation: "slide",
                controlNav: "thumbnails"
            });
        });
    </script>
</head>
<body>







<!--header-->
<jsp:include page="/header.jsp"></jsp:include>
<!--//header-->


<!--//single-page-->
<div class="single">
    <div class="container">
        <div class="single-grids">
            <div class="col-md-4 single-grid">
                <div class="flexslider">

                    <ul class="slides">
                        <li data-thumb="${book.bcover}">
                            <div class="thumb-image"> <img src="${book.bcover}" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="${book.bimage1}">
                            <div class="thumb-image"> <img src="${book.bimage1}" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                        <li data-thumb="${book.bimage2}">
                            <div class="thumb-image"> <img src="${book.bimage2}" data-imagezoom="true" class="img-responsive"> </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 single-grid simpleCart_shelfItem">
                <h3>${book.bname}</h3>
                <div class="tag">
                    <p>Catégorie : <a href="goods.action?typeid=5">${book.btname}</a></p>
                </div>
                <p>${book.bmark}</p>
                <div class="galry">
                    <div class="prices">

                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="btn_form">
                    <a href="javascript:;" class="add-cart item_add" onclick="buy(${book.bid})">Ajouter à mom panier</a>
                </div>
            </div>
            <div class="col-md-4 single-grid1">
                <!-- <h2>Catégories des livres</h2> -->
                <ul>
                    <li><a  href="booktypes_list.action?pageNumber=1&btid=-1">Tous les livres</a></li>

                    <c:forEach items="${bookTypes}" var="t">
                        <li><a href="booktypes_list.action?pageNumber=1&btid=${t.btid}">${t.btname}</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>




<!--footer-->
<jsp:include page="/footer.jsp"></jsp:include>
<!--//footer-->


</body>
</html>
