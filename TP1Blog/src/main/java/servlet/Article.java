package servlet;

import java.util.List;

public class Article {
	
	private int id;
    private String title;
    private String content;
    private List<Comment> comments;
    private String categorie;
    

    public Article() {
        // Constructeur par défaut
    }
    
    // Constructeur
    public Article(int id, String title, String content, List<Comment> comments, String categorie) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.comments = comments;
        this.categorie = categorie;
    }
    // Getters et setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }
    
    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }
}
