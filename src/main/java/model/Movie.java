package model;

public class Movie {
    int movieId;
    String movieName;
    int movieTime;
    String directory;
    String imageLink;
    String category;

    public Movie(int movieId, String movieName, int movieTime, String directory, String imageLink, String category) {
        this.movieId = movieId;
        this.movieName = movieName;
        this.movieTime = movieTime;
        this.directory = directory;
        this.imageLink = imageLink;
        this.category = category;
    }

    public Movie() {
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public int getMovieTime() {
        return movieTime;
    }

    public void setMovieTime(int movieTime) {
        this.movieTime = movieTime;
    }

    public String getDirectory() {
        return directory;
    }

    public void setDirectory(String directory) {
        this.directory = directory;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}
