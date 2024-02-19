<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<title>Créer un commentaire</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	
    <div class="container mt-4">
        <h1>Créer un nouveau commentaire</h1>
        
        <form action="AddComment" method="POST">
            <input type="hidden" name="articleId" value="<%= request.getParameter("articleId") %>">
            
            <div class="form-group">
                <label for="autor">Nom de l'auteur :</label>
                <input type="text" class="form-control" id="autor" name="autor">
            </div>
            
            <div class="form-group">
                <label for="content">Contenu du commentaire :</label>
                <textarea class="form-control" id="content" name="content" rows="4"></textarea>
            </div>
            
            <button type="submit" class="btn btn-primary">Ajouter le commentaire</button>
        </form>
    </div>
</body>
</html>