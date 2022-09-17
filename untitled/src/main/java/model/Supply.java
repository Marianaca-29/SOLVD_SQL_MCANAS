package model;

public class Supply {
    private int id;
    private String fullName;
    private String address;
    private String details;
    private String phoneNumber;
    private String email;
    private int taxNumber;

    public Supply(int id, String fullName, String address, String details, String phoneNumber, String email, int taxNumber) {
        this.id = id;
        this.fullName = fullName;
        this.address = address;
        this.details = details;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.taxNumber = taxNumber;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTaxNumber() {
        return taxNumber;
    }

    public void setTaxNumber(int taxNumber) {
        this.taxNumber = taxNumber;
    }
}
