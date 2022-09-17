package model;

import java.util.Date;

public class OrderRepair {
    private int id;
    private Date orderRepairDate;
    private String description;

    public OrderRepair(int id, Date orderRepairDate, String description) {
        this.id = id;
        this.orderRepairDate = orderRepairDate;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getOrderRepairDate() {
        return orderRepairDate;
    }

    public void setOrderRepairDate(Date orderRepairDate) {
        this.orderRepairDate = orderRepairDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
