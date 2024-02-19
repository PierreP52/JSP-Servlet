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

@WebServlet("/displayArticle")
public class ArticleDisplayServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<Article> articles; // Assurez-vous que cette liste est accessible ici

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
    	 ServletContext servletContext = getServletContext();

         //recuperation des donnée
         List<Article> articles = (List<Article>) servletContext.getAttribute("articles");
    	//recuperation de l'id
    	int articleId = Integer.parseInt(request.getParameter("id"));
    	//filtre en fonction de l'Id de l'article
        Article articleToDisplay = articles.stream()
                                    .filter(article -> article.getId() == articleId)
                                    .findFirst()
                                    .orElse(null);

        if (articleToDisplay != null) {
            request.setAttribute("article", articleToDisplay);
            request.getRequestDispatcher("displayArticle.jsp").forward(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}