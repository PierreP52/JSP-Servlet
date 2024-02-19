package servlet;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/AddComment")
public class CommentAdditionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Récupération des données du formulaire pour le nouveau commentaire
        String content = request.getParameter("content");
        String autor = request.getParameter("autor");
        int articleId = Integer.parseInt(request.getParameter("articleId"));

        // Obtenir la liste d'articles depuis le ServletContext
        ServletContext servletContext = getServletContext();
        List<Article> articles = (List<Article>) servletContext.getAttribute("articles");

        // Recherche de l'article correspondant dans la liste
        Article targetArticle = articles.stream()
                                        .filter(article -> article.getId() == articleId)
                                        .findFirst()
                                        .orElse(null);

        if (targetArticle != null) {
            // Création du commentaire
            Comment newComment = new Comment();
            newComment.setContent(content);
            newComment.setAutor(autor);
            // Ajout du commentaire à la liste des commentaires de l'article
            List<Comment> articleComments = targetArticle.getComments();
            articleComments.add(newComment);
            targetArticle.setComments(articleComments);

            request.setAttribute("articleId", articleId);
            request.getRequestDispatcher("confirmationComment.jsp").forward(request, response);
            
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}
