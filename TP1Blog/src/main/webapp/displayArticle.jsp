<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="servlet.Article" %>
<%@ page import="servlet.Comment" %> 
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Article</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
     <div class="container mt-4">
        <h1>Détails de l'article</h1>
        
        <%-- Récupération de l'article depuis la requête --%>
        <% Article article = (Article) request.getAttribute("article"); %>
        
        <%-- Vérification si l'article existe --%>
        <% if (article != null) { %>
            <h2><%= article.getTitle() %></h2>
            <p>Catégorie : <%= article.getCategorie() %></p>
            <p>Contenu : <%= article.getContent() %></p>
            
            <%-- Vérification s'il y a des commentaires --%>
            <% List<Comment> comments = article.getComments(); %>
            <% if (comments != null && !comments.isEmpty()) { %>
                <h3>Commentaires :</h3>
                <ul>
                    <% for (Comment comment : comments) { %>
                        <li>
                            <p>Auteur : <%= comment.getAutor() %></p>
                            <p>Contenu : <%= comment.getContent() %></p>
                        </li>
                    <% } %>
                </ul>
            <% } else { %>
                <p>Aucun commentaire pour cet article.</p>
            <% } %>
            <%-- Lien pour ajouter un commentaire --%>
            <a href="createComment.jsp?articleId=<%= article.getId() %>" class="btn btn-primary">Ajouter un commentaire</a>
        <% } else { %>
            <p>Article non trouvé.</p>
        <% } %>
    </div>
</body>
</html>