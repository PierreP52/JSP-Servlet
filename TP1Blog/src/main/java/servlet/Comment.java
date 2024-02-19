package servlet;

public class Comment {
	private int commentId;
    private String content;
	private String autor;
    
    public Comment() {
        // Constructeur par défaut
    }

    public Comment(int commentId, String content, String autor) {
        this.commentId = commentId;
        this.autor = autor;
        this.content = content;
    }

    // Getters et setters

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }
    
    public String getAutor() {
    	return autor;
    }
    
    public void setAutor(String autor) {
    	this.autor = autor;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
