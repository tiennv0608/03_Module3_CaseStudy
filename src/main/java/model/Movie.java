package model;

public class Movie {
    int id;
    String nameMovie;
    int time;
    String director;
    String image;
    String category;
    String description;

    public Movie() {
    }

    public Movie(int id, String nameMovie, int time, String director, String image, String category, String description) {
        this.id = id;
        this.nameMovie = nameMovie;
        this.time = time;
        this.director = director;
        this.image = image;
        this.category = category;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameMovie() {
        return nameMovie;
    }

    public void setNameMovie(String nameMovie) {
        this.nameMovie = nameMovie;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
