package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Payment {
    private int id;
    private double fee;
    private Method method;
    private Status status;

    public Payment(int id, double fee, Method method, Status status) {
        this.id = id;
        this.fee = fee;
        this.method = method;
        this.status = status;
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

    public Method getMethod() {
        return method;
    }

    public void setMethod(Method Method) {
        this.method = Method;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Payment{" +
                "id=" + id +
                ", fee=" + fee +
                ", Method=" + method +
                ", status=" + status +
                '}';
    }

    public Payment() {
    }
}
