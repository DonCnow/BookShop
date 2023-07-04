
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false" %>
<html>
<head>
    <title>Catégorie</title>
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
<jsp:include page="/header.jsp">
    <jsp:param name="flag" value="1"></jsp:param>
</jsp:include>

<!--banner-->

<div class="banner">
    <div class="container">
        <h2 class="hdng"><a href="book_detail.action?bid=${scrollBook.bid}">${scrollBook.bname}</a><span></span></h2>
        <p>Notre recommandation</p>
        <a class="banner_a" href="javascript:;" onclick="buy(${scrollBook.bid})">Emprunter maintenant</a>
        <div class="banner-text">
            <a href="book_detail.action?bid=${scrollBook.bid}">
                <img src="${scrollBook.bcover}" alt="${scrollBook.bname}" width="350" height="350">
            </a>
        </div>
    </div>
</div>

<!--//banner-->

<!--gallery-->
<div class="gallery">
    <div class="container">
        <div class="alert alert-danger">Recommandation</div>
        <div class="gallery-grids">
            <c:forEach items="${hotList}" var="book">
                <div class="col-md-4 gallery-grid glry-two">
                    <a href="book_detail.action?bid=${book.bid}">
                        <img src="${book.bcover}" class="img-responsive" alt="${book.bname}" width="350" height="350"/>
                    </a>
                    <div class="gallery-info galrr-info-two">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="book_detail.action?bid=${book.bid}">Détail</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${book.bid})">Emprunter</a>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="galy-info">
                        <p>${book.btname} > ${book.bname}</p>
                        <div class="galry">
                            <div class="prices">

                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="clearfix"></div>
        <div class="alert alert-info">Nouveaux livres</div>
        <div class="gallery-grids">
            <c:forEach items="${newList}" var="book">
                <div class="col-md-3 gallery-grid ">
                    <a href="book_detail.action?bid=${book.bid}">
                        <img src="${book.bcover}" class="img-responsive" alt="${book.bname}"/>
                    </a>
                    <div class="gallery-info">
                        <p>
                            <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                            <a href="book_detail.action?bid=${book.bid}">Détail</a>
                        </p>
                        <a class="shop" href="javascript:;" onclick="buy(${book.bid})">Emprunter maintenant</a>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="galy-info">
                        <p>${book.btname} > ${book.bname}</p>
                        <div class="galry">
                            <div class="prices">

                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!--//gallery-->
<!--subscribe-->
<div class="subscribe"></div>
<!--//subscribe-->


<!--footer-->
<jsp:include page="/footer.jsp"></jsp:include>
</body>
</html>
