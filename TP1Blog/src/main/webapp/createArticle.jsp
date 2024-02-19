<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Créer un nouvel article</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
    <div class="container mt-4">
        <h1>Créer un nouvel article</h1>
        <form action="createArticle" method="POST">
            <div class="form-group">
                <label for="title">Titre :</label>
                <input type="text" class="form-control" id="title" name="title">
            </div>
            
            <div class="form-group">
                <label for="content">Contenu :</label>
                <textarea class="form-control" id="content" name="content" rows="4"></textarea>
            </div>
            
            <div class="form-group">
                <label for="categorie">Catégorie :</label>
                <select class="form-control" id="categorie" name="categorie">
                    <option value="Scientifique">Scientifique</option>
                    <option value="Littéraire">Littéraire</option>
                    <option value="Informatique">Informatique</option>
                </select>
            </div>
            
            <button type="submit" class="btn btn-primary">Créer l'article</button>
        </form>
    </div>
</body>
</html>