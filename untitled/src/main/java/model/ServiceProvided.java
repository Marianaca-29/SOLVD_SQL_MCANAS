package model;

import java.util.Date;

public class ServiceProvided {
    private int id;
    private String detail;
    private int cost;
    private int price;
    private Date serviceDate;

    public ServiceProvided(int id, String detail, int cost, int price, Date serviceDate) {
        this.id = id;
        this.detail = detail;
        this.cost = cost;
        this.price = price;
        this.serviceDate = serviceDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getServiceDate() {
        return serviceDate;
    }

    public void setServiceDate(Date serviceDate) {
        this.serviceDate = serviceDate;
    }
}
