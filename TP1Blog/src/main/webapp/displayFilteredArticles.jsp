<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="servlet.Article" %>
<!DOCTYPE html>
<html>
<head>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Articles filtrés par Catégorie</title>
</head>
<body>
	<%@ include file="header.jsp" %>

     <div class="container mt-4">
        <h1>Articles filtrés par Catégorie</h1>
        
        <%-- Récupération des articles filtrés depuis la requête --%>
        <% List<Article> filteredArticles = (List<Article>) request.getAttribute("filteredArticles"); %>
        
        <%-- Vérification si des articles ont été filtrés --%>
        <% if (filteredArticles != null && !filteredArticles.isEmpty()) { %>
            <ul class="list-group">
                <%-- Parcours des articles filtrés pour les afficher --%>
                <% for (Article article : filteredArticles) { %>
                    <li class="list-group-item">
                        <h2>
                            <a href="displayArticle?id=<%= article.getId() %>">
                                <%= article.getTitle() %>
                            </a>
                        </h2>
                        <p>Catégorie : <%= article.getCategorie() %></p>
                    </li>
                <% } %>
            </ul>
        <% } else { %>
            <p>Aucun article trouvé pour cette catégorie.</p>
        <% } %>
    </div>
</body>
</html>