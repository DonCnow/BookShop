
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Page d'accueil</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/simpleCart.min.js"></script>
    <script type="text/javascript" src="layer/layer.js"></script>
    <script type="text/javascript" src="js/cart.js"></script>
</head>
<body>


<jsp:include page="/header.jsp">
    <jsp:param value="8" name="flag"/>
</jsp:include>


<!--products-->
<div class="products">
    <div class="container">
        <h2> Trouvé ‘${param.keyword }’ </h2>

        <div class="col-md-12 product-model-sec">

            <c:forEach items="${p.list }" var="book">
                <div class="product-grid">
                    <a href="book_detail.action?bid=${book.bid}">
                        <div class="more-product"><span> </span></div>
                        <div class="product-img b-link-stripe b-animate-go  thickbox">
                            <img src="${book.bcover}" class="img-responsive" alt="${book.bname }" width="240" height="240">
                            <div class="b-wrapper">
                                <h4 class="b-animate b-from-left  b-delay03">
                                    <button>Détail</button>
                                </h4>
                            </div>
                        </div>
                    </a>
                    <div class="product-info simpleCart_shelfItem">
                        <div class="product-info-cust prt_name">
                            <h4>${book.bname }</h4>

                            <input type="button" class="item_add items" value="Emprunter" onclick="buy(${book.bid})">
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>
            </c:forEach>

            <div class="clearfix"> </div>
        </div>
        <div>
            <jsp:include page="page.jsp">
                <jsp:param name="url" value="search_books.action"></jsp:param>
                <jsp:param name="param" value="&keyword=${keyword}"></jsp:param>
            </jsp:include>
        </div>
    </div>
</div>
<!--//products-->

<jsp:include page="/footer.jsp"></jsp:include>

</body>
</html>
