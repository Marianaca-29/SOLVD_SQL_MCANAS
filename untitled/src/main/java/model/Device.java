package model;

public class Device {
    private int id;
    private String serialNumber;
    private String brand;
    private String model;
    private String details;
    private int year_model;

    public Device(int id, String serialNumber, String brand, String model, String details, int year_model) {
        this.id = id;
        this.serialNumber = serialNumber;
        this.brand = brand;
        this.model = model;
        this.details = details;
        this.year_model = year_model;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public int getYear_model() {
        return year_model;
    }

    public void setYear_model(int year_model) {
        this.year_model = year_model;
    }
}
