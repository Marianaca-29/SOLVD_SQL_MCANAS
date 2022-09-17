package model;

public class Company {
    private int id;
    private String fullName;
    private String adress;

    public Company(int id, String fullName, String adress) {
        this.id = id;
        this.fullName = fullName;
        this.adress = adress;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }
}
