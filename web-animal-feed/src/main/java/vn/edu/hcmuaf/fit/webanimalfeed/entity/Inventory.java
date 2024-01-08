package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Inventory {
    private int id;
    private String note;
    private int quantity;

    public Inventory() {
    }

    public Inventory(int id, String note, int quantity) {
        this.id = id;
        this.note = note;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getnote() {
        return note;
    }

    public void setnote(String note) {
        this.note = note;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Inventory{" +
                "id=" + id +
                ", note='" + note + '\'' +
                ", quantity=" + quantity +
                '}';
    }
}
