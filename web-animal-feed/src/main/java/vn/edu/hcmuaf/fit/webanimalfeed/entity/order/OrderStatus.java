package vn.edu.hcmuaf.fit.webanimalfeed.entity.order;

public class OrderStatus {
    private int id;
    private int statusName;

    public OrderStatus() {
    }

    public OrderStatus(int id, int statusName) {
        this.id = id;
        this.statusName = statusName;
    }

    public int getId() {
        return id;
    }

    public int getStatusName() {
        return statusName;
    }

    public void setId(int id) {
        this.id = id;
    }


    public void setStatusName(int statusName) {
        this.statusName = statusName;
    }


    @Override

    public String toString() {
        return "OrderStatus{" +
               "id=" + id +
               ", statusName=" + statusName +
               '}';
    }
}
