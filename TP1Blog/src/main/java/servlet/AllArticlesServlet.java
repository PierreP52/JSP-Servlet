package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/allArticles")
public class AllArticlesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	ServletContext servletContext = getServletContext();

        // Récupération de la liste d'articles depuis le ServletContext
        List<Article> articles = (List<Article>) servletContext.getAttribute("articles");

        if (articles != null && !articles.isEmpty()) {
            request.setAttribute("articles", articles);
            request.getRequestDispatcher("allArticles.jsp").forward(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}