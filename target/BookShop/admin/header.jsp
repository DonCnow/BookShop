
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="index.jsp">Back-end of Emazon</a>
        </div>
        <div>
            <ul class="nav navbar-nav">
                <li ><a href="order_list.action?pageNumber=1&ostatus=1">Gérer les commandes</a></li>
                <li ><a href="user_list.action?pageNumber=1">Gérer les clients</a></li>
                <li ><a href="book_list.action?pageNumber=1&rtype=0">Gérer les livres</a></li>
                <li ><a href="type_list.action">Gérer les catégories</a></li>
                <li><a href="logout.action">Se déconnextion</a></li>
            </ul>
        </div>
    </div>
</nav>

