
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<div style='text-align:center;'>
    <a class='btn btn-info'   <c:if test="${p.pageNumber==1 }">disabled</c:if>  <c:if test="${p.pageNumber!=1 }">href="${param.url }?pageNumber=1${param.param }"</c:if>>Page d'accueil</a>
    <a class='btn btn-info' <c:if test="${p.pageNumber==1 }">disabled</c:if> <c:if test="${p.pageNumber!=1 }">href="${param.url }?pageNumber=${p.pageNumber-1}${param.param }"</c:if>>Précédent</a>
    <h3 style='display:inline;'>[${p.pageNumber }/${p.totalPage }]</h3>
    <h3 style='display:inline;'>[${p.totalCount }]</h3>
    <a class='btn btn-info' <c:if test="${p.totalPage==0 || p.pageNumber==p.totalPage }">disabled</c:if> <c:if test="${p.pageNumber!=p.totalPage }">href="${param.url }?pageNumber=${p.pageNumber+1}${param.param }"</c:if>>Prochain</a>
    <a class='btn btn-info' <c:if test="${p.totalPage==0 || p.pageNumber==p.totalPage }">disabled</c:if> <c:if test="${p.pageNumber!=p.totalPage }">href="${param.url }?pageNumber=${p.totalPage}${param.param }"</c:if>>Dernier</a>
    <input type='text' class='form-control' style='display:inline;width:60px;' value=''/><a class='btn btn-info' href='javascript:void(0);' onclick='location.href="${param.url }?pageNumber="+(this.previousSibling.value)+"${param.param }"'>GO</a>
</div>

</body>
</html>
