package model;

public class PaymentMethod {
    private int id;
    private String name;
    private String type;
    private String detail;

    public PaymentMethod(int id, String name, String type, String detail) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.detail = detail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
