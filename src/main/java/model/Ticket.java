package model;

public class Ticket {
    private String fullName;
    private String phone;
    private String nameMovie;
    private int idRoom;
    private int price;
    private String showTime;
    private int quantity;

    public Ticket() {
    }

    public Ticket(String fullName, String phone, String nameMovie, int idRoom, int price, String showTime, int quantity) {
        this.fullName = fullName;
        this.phone = phone;
        this.nameMovie = nameMovie;
        this.idRoom = idRoom;
        this.price = price;
        this.showTime = showTime;
        this.quantity = quantity;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getNameMovie() {
        return nameMovie;
    }

    public void setNameMovie(String nameMovie) {
        this.nameMovie = nameMovie;
    }

    public int getIdRoom() {
        return idRoom;
    }

    public void setIdRoom(int idRoom) {
        this.idRoom = idRoom;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getShowTime() {
        return showTime;
    }

    public void setShowTime(String showTime) {
        this.showTime = showTime;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
