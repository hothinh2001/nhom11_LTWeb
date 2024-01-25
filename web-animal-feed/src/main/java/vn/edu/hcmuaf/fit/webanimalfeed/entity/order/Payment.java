package vn.edu.hcmuaf.fit.webanimalfeed.entity.order;

public class Payment {
    private int id;
    private double fee;
    private int methodId;
    private int statusId;


    public Payment(int id, double fee, int methodId, int statusId) {
        this.id = id;
        this.fee = fee;
        this.methodId = methodId;
        this.statusId = statusId;
    }

    public Payment() {
    }

    @Override
    public String toString() {
        return "Payment{" +
               "id=" + id +
               ", fee=" + fee +
               ", methodId=" + methodId +
               ", statusId=" + statusId +
               '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getFee() {
        return fee;
    }

    public void setFee(double fee) {
        this.fee = fee;
    }

    public int getMethodId() {
        return methodId;
    }

    public void setMethodId(int methodId) {
        this.methodId = methodId;
    }

    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }
}
