<header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <!-- Titre du site avec un lien vers accueil.jsp -->
            <a class="navbar-brand" href="Accueille.jsp">Article Blog</a>
            
            <div class="ml-auto">
                <!-- Bouton pour ArticleCreationServlet -->
                <form class="form-inline ml-auto" action="createArticle.jsp">
                    <button class="btn btn-outline-success mr-2" type="submit">Créer un Article</button>
                </form>
                
                <!-- Bouton pour AllArticlesServlet -->
                <form class="form-inline" action="allArticles">
                    <button class="btn btn-outline-success" type="submit">Tous les Articles</button>
                </form>
            </div>
        </nav>
</header>