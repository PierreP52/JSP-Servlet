package servlet;

import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/filterArticlesByCategory")
public class ArticleCategoryFilterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupération du paramètre de requête GET pour la catégorie
        String categoryName = request.getParameter("selectedCategory");

        // Obtenir la liste d'articles depuis le ServletContext
        ServletContext servletContext = getServletContext();
        List<Article> articles = (List<Article>) servletContext.getAttribute("articles");

        // Filtrage des articles par la catégorie spécifique
        List<Article> filteredArticles = articles.stream()
                                                .filter(article -> article.getCategorie().equalsIgnoreCase(categoryName))
                                                .collect(Collectors.toList());

        if (!filteredArticles.isEmpty()) {
            request.setAttribute("filteredArticles", filteredArticles);
            request.getRequestDispatcher("displayFilteredArticles.jsp").forward(request, response);
        } else {
            response.sendRedirect("noArticlesFound.jsp");
        }
    }
}
