package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Orders {
    private int id;
    private Users userId;
    private double totalPrice;
    private double totalOrder;
    private int quantity;
    private Status statusId;
    private Payment paymentId;
    private String dateOrder;


    public Orders(int id, Users userId, double totalPrice, double totalOrder, int quantity, Status statusId, Payment paymentId, String dateOrder) {
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

    public Users getUserId() {
        return userId;
    }

    public void setUserId(Users userId) {
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

    public Status getStatusId() {
        return statusId;
    }

    public void setStatusId(Status statusId) {
        this.statusId = statusId;
    }

    public Payment getPaymentId() {
        return paymentId;
    }

    public void setPaymentId(Payment paymentId) {
        this.paymentId = paymentId;
    }

    public String getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(String dateOrder) {
        this.dateOrder = dateOrder;
    }

    @Override
    public String toString() {
        return "Orders{" +
                "id=" + id +
                ", userId=" + userId +
                ", totalPrice=" + totalPrice +
                ", totalOrder=" + totalOrder +
                ", quantity=" + quantity +
                ", statusId=" + statusId +
                ", paymentId=" + paymentId +
                ", dateOrder='" + dateOrder + '\'' +
                '}';
    }

    public Orders() {
    }
}