package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/createArticle")
public class ArticleCreationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private List<Article> articles = new ArrayList<>();
    private AtomicInteger articleIdCounter = new AtomicInteger(1);

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        String categorie = request.getParameter("categorie");

        Article newArticle = new Article();
        newArticle.setId(articleIdCounter.getAndIncrement());
        newArticle.setTitle(title);
        newArticle.setContent(content);
        newArticle.setCategorie(categorie); 
        newArticle.setComments(new ArrayList<>());

        //insertion des paramètre dans l'objet
        articles.add(newArticle);
        //creation du ServletContext pour une utilisation dans d'autre partie du code
        ServletContext servletContext = getServletContext();

        servletContext.setAttribute("articles", articles);

        response.sendRedirect("comfirmation.jsp");
    }
}
