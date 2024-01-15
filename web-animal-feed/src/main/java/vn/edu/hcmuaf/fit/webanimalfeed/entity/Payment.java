package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Payment {
   private int id;
   private double fee;
   private Methob methob;
   private Status status;

    public Payment(int id, double fee, Methob methob, Status status) {
        this.id = id;
        this.fee = fee;
        this.methob = methob;
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

    public Methob getMethob() {
        return methob;
    }

    public void setMethob(Methob methob) {
        this.methob = this.methob;
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
                ", methob=" + methob +
                ", status=" + status +
                '}';
    }
    public Payment(){
    }
}
