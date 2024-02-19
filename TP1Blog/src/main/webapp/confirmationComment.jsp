<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="servlet.Article" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<title>Enregistrement Commentaire Réussi!</title>
</head>
<body>
 	<%@ include file="header.jsp" %>
 	<div class="container mt-4">
		<h1>Enregistrement du commentaire Réussi!</h1>
		<a href="displayArticle?id=<%= request.getAttribute("articleId") %>" class="btn btn-primary">Retour à l'article</a>
	</div>
</body>
</html>