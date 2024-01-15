package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Status {
    int id;
    String nameStatus;

    public Status(int id, String nameStatus) {
        this.id = id;
        this.nameStatus = nameStatus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameStatus() {
        return nameStatus;
    }

    public void setNameStatus(String nameStatus) {
        this.nameStatus = nameStatus;
    }
public Status(){

}
    @Override
    public String toString() {
        return "Status{" +
                "id=" + id +
                ", nameStatus='" + nameStatus + '\'' +
                '}';
    }
}
