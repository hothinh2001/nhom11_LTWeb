package vn.edu.hcmuaf.fit.webanimalfeed.entity.order;

public class Method {
    private int id;
    private String methodName;

    public Method(int id, String methodName) {
        this.id = id;
        this.methodName = methodName;
    }

    public Method() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMethodName() {
        return methodName;
    }

    public void setMethodName(String methodName) {
        this.methodName = methodName;
    }

    @Override
    public String toString() {
        return "Method{" +
               "id=" + id +
               ", methodName='" + methodName + '\'' +
               '}';
    }
}
