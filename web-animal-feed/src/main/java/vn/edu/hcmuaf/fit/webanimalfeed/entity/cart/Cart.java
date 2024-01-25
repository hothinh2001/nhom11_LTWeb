package vn.edu.hcmuaf.fit.webanimalfeed.entity.cart;

import java.util.Date;

public class Cart {
    private int id;
    private double totalPrice;
    private int userId;
    private Date createAt;
    private Date modifiedAt;

    public Cart() {
    }

    public Cart(int id, double totalPrice, int userId, Date createAt, Date modifiedAt) {
        this.id = id;
        this.totalPrice = totalPrice;
        this.userId = userId;
        this.createAt = createAt;
        this.modifiedAt = modifiedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    public Date getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(Date modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "id=" + id +
                ", totalPrice=" + totalPrice +
                ", userId=" + userId +
                ", createAt=" + createAt +
                ", modifiedAt=" + modifiedAt +
                '}';
    }

 
}
