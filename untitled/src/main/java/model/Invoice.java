package model;

import java.util.Date;

public class Invoice {
    private int id;
    private Date invoiceDate;

    public Invoice(int id, Date invoiceDate) {
        this.id = id;
        this.invoiceDate = invoiceDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getInvoiceDate() {
        return invoiceDate;
    }

    public void setInvoiceDate(Date invoiceDate) {
        this.invoiceDate = invoiceDate;
    }
}
