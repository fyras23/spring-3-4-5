<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier un Produit</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" />
    <c:url value="/css/main.css" var="jstlCss" />
    <link href="${jstlCss}" rel="stylesheet" />
    <script type="text/javascript" src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <div class="card-body">
            <form action="updateProduit" method="post">
                <div class="form-group">
                    <label class="control-label">ID Produit :</label>
                    <input type="text" name="idProduit" value="${produit.idProduit}" readonly class="form-control"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Nom Produit :</label>
                    <input type="text" name="nomProduit" value="${produit.nomProduit}" class="form-control"/>
                </div>
                <div class="form-group">
                    <label class="control-label">Prix Produit :</label>
                    <input type="text" name="prixProduit" value="${produit.prixProduit}" class="form-control"/>
                </div>
                <div class="form-group">
                    <label class="control-label"> Date creation :</label>
                    <fmt:formatDate pattern="yyyy-MM-dd" value="${produit.dateCreation}" var="formatDate" />
                    <input type="date" name="date" value="${formatDate}" class="form-control"/>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary">Modifier</button>
                </div>
            </form>
        </div>
        <br/>
        <br/>
        <a href="ListeProduits">Liste Produits</a>
    </div>
</body>
</html>
