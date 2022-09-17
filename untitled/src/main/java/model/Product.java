package model;

import java.util.Date;

public class Product {
    private int id;
    private String details;
    private double price;
    private double cost;
    private Date dateEnter;
    private int minStock;
    private int currentStock;
    private int maxStock;
    private String otherDetails;

    public Product(int id, String details, double price, double cost, Date dateEnter, int minStock, int currentStock, int maxStock, String otherDetails) {
        this.id = id;
        this.details = details;
        this.price = price;
        this.cost = cost;
        this.dateEnter = dateEnter;
        this.minStock = minStock;
        this.currentStock = currentStock;
        this.maxStock = maxStock;
        this.otherDetails = otherDetails;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getCost() {
        return cost;
    }

    public void setCost(double cost) {
        this.cost = cost;
    }

    public Date getDateEnter() {
        return dateEnter;
    }

    public void setDateEnter(Date dateEnter) {
        this.dateEnter = dateEnter;
    }

    public int getMinStock() {
        return minStock;
    }

    public void setMinStock(int minStock) {
        this.minStock = minStock;
    }

    public int getCurrentStock() {
        return currentStock;
    }

    public void setCurrentStock(int currentStock) {
        this.currentStock = currentStock;
    }

    public int getMaxStock() {
        return maxStock;
    }

    public void setMaxStock(int maxStock) {
        this.maxStock = maxStock;
    }

    public String getOtherDetails() {
        return otherDetails;
    }

    public void setOtherDetails(String otherDetails) {
        this.otherDetails = otherDetails;
    }
}
