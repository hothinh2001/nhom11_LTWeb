package vn.edu.hcmuaf.fit.webanimalfeed.entity.order;

import java.util.Date;

public class Order {
    private int id;
    private int userId;
    private double totalPrice;
    private int totalOrder;
    private int quantity;
    private int statusId;
    private int paymentId;
    private Date dateOrder;

    public Order(int id, int userId, double totalPrice, int totalOrder, int quantity, int statusId, int paymentId, Date dateOrder) {
        this.id = id;
        this.userId = userId;
        this.totalPrice = totalPrice;
        this.totalOrder = totalOrder;
        this.quantity = quantity;
        this.statusId = statusId;
        this.paymentId = paymentId;
        this.dateOrder = dateOrder;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getTotalOrder() {
        return totalOrder;
    }

    public void setTotalOrder(int totalOrder) {
        this.totalOrder = totalOrder;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public int getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }

    public Date getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(Date dateOrder) {
        this.dateOrder = dateOrder;
    }

    @Override
    public String toString() {
        return "Order{" +
               "id=" + id +
               ", userId=" + userId +
               ", totalPrice=" + totalPrice +
               ", totalOrder=" + totalOrder +
               ", quantity=" + quantity +
               ", statusId=" + statusId +
               ", paymentId=" + paymentId +
               ", dateOrder=" + dateOrder +
               '}';
    }
}
