package model;

public class User {
    private String username;
    private String password;
    private String gender;
    private int  dob;
    private String email;
    private int phone;
    private String address;

    public User(){}

    public User(String username, String password, String gender, int dob, String email, int phone, String address) {
        this.username = username;
        this.password = password;
        this.gender = gender;
        this.dob = dob;
        this.email = email;
        this.phone = phone;
        this.address = address;
    }
}
