package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Methob {
   private int id;
   private String nameMethob;

    public Methob(int id, String nameMethob) {
        this.id = id;
        this.nameMethob = nameMethob;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameMethob() {
        return nameMethob;
    }

    public void setNameMethob(String nameMethob) {
        this.nameMethob = nameMethob;
    }

    public Methob(){

}
    @Override
    public String toString() {
        return "Methob{" +
                "id=" + id +
                ", nameMethob='" + nameMethob + '\'' +
                '}';
    }
}
