
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>Emprunter</title>
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
<jsp:include page="header.jsp"></jsp:include>
<!--//header-->

<div class="cart-items">
    <div class="container">
        <h2>Confirmer les informations des livres</h2>
        <form class="form-horizontal" action="order_confirm.action" method="post" id="payform">
            <div class="row">
                <label class="control-label col-md-1">Information d'étudiant</label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="name" value="${user.urealname }" style="height:auto;padding:10px;" readonly="readonly" required="required"><br>
                </div>
            </div>
            <div class="row">
                <label class="control-label col-md-1">Téléphone</label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="phone" value="${user.uphone }" style="height:auto;padding:10px;" readonly="readonly" required="required"><br>
                </div>
            </div>
            <div class="row">
                <label class="control-label col-md-1">Adresse E-mail</label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="address" value="${user.uaddress }" style="height:auto;padding:10px;" readonly="readonly" required="required"><br>
                </div>
            </div>

            <br><hr><br>





            <div class="col-sm-6 col-md-4 col-lg-3 ">
                <label>
                    <div class="thumbnail">
                        <input type="radio" name="opaytype" value="3"  />

                    </div>
                </label>
            </div>
            <div class="clearfix"> </div>
            <div class="register-but text-center">
                <input type="submit" value="Confirmer">
                <div class="clearfix"> </div>
            </div>
        </form>
    </div>
</div>





<!--footer-->
<jsp:include page="footer.jsp"></jsp:include>
<!--//footer-->


<script type="text/javascript">
    function dopay(paytype){
        $("#paytype").val(paytype);
        $("#payform").submit();
    }
</script>

</body>
</html>
