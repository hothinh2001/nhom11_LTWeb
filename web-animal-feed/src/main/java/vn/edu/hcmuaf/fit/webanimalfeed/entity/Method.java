package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Method {
    private int id;
    private String nameMethod;

    public Method(int id, String nameMethod) {
        this.id = id;
        this.nameMethod = nameMethod;
    }

    public Method() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameMethod() {
        return nameMethod;
    }

    public void setNameMethod(String nameMethod) {
        this.nameMethod = nameMethod;
    }

    @Override
    public String toString() {
        return "Method{" +
                "id=" + id +
                ", nameMethod='" + nameMethod + '\'' +
                '}';
    }
}
