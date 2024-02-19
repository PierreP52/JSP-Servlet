<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="servlet.Article" %> 
<%@ page import="java.util.List" %> <!-- Import de java.util.List -->
<!DOCTYPE html>
<html>
<head>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Liste des articles</title>
</head>
<body>

 <%@ include file="header.jsp" %>

    <div class="container mt-4">
        <h1>Liste des articles</h1>
        <div class="row">
            <div class="col-md-12">
                <h5>Sélection de Catégorie</h5>
                <form action="filterArticlesByCategory" method="get">
                    <label for="selectedCategory">Catégorie :</label><br>
                    <select id="selectedCategory" name="selectedCategory" class="form-control">
                        <option value="Scientifique">Scientifique</option>
                        <option value="Littéraire">Littéraire</option>
                        <option value="Informatique">Informatique</option>
                    </select><br><br>
                    <input type="submit" value="Trier par Catégorie" class="btn btn-primary">
                </form>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col-md-12">
            	<h5>liste des articles</h5>
                <% List<Article> articles = (List<Article>) request.getAttribute("articles"); %>
                <% if (articles != null && !articles.isEmpty()) { %>
                    <ul>
                        <% for (Article article : articles) { %>
                            <li>
                                <a href="displayArticle?id=<%= article.getId() %>">
                                    <%= article.getTitle() %>
                                </a>
                            </li>
                        <% } %>
                    </ul>
                <% } else { %>
                    <p>Aucun article disponible.</p>
                <% } %>
            </div>
        </div>
    </div>
</body>
</html>