package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Inventory {
    private int id;
    private String nameProduct;
    private int quantity;

    public Inventory() {
    }

    public Inventory(int id, String nameProduct, int quantity) {
        this.id = id;
        this.nameProduct = nameProduct;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
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
                ", nameProduct='" + nameProduct + '\'' +
                ", quantity=" + quantity +
                '}';
    }
}
