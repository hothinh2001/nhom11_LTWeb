package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Orders {
    private int id;
    private int userId;
    private double totalPrice;
    private double totalOrder;
    private int quantity;
    private String orderStatus;
    private int paymentId;

    public Orders(int id, int userId, double totalPrice, double totalOrder, int quantity, String orderStatus, int paymentId) {
        this.id = id;
        this.userId = userId;
        this.totalPrice = totalPrice;
        this.totalOrder = totalOrder;
        this.quantity = quantity;
        this.orderStatus = orderStatus;
        this.paymentId = paymentId;
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

    public double getTotalOrder() {
        return totalOrder;
    }

    public void setTotalOrder(double totalOrder) {
        this.totalOrder = totalOrder;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }

    public int getPaymentId() {
        return paymentId;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", userId=" + userId +
                ", totalPrice=" + totalPrice +
                ", totalOrder=" + totalOrder +
                ", quantity=" + quantity +
                ", orderStatus='" + orderStatus + '\'' +
                ", paymentId=" + paymentId +
                '}';
    }

    public void setPaymentId(int paymentId) {
        this.paymentId = paymentId;
    }
}
