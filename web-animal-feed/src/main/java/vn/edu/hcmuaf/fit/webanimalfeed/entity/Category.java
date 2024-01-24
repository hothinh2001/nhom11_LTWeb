package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Category {
    private int id;
    private String nameCate;
    private String iconCate;

    public Category(String nameCate, String iconCate) {
        this.nameCate = nameCate;
        this.iconCate = iconCate;

    }

    public Category(int id, String nameCate, String iconCate) {
        this.id = id;
        this.nameCate = nameCate;
        this.iconCate = iconCate;
    }

    public Category() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameCate() {
        return nameCate;
    }

    public void setNameCate(String nameCate) {
        this.nameCate = nameCate;
    }

    public String getIconCate() {
        return iconCate;
    }

    public void setIconCate(String iconCate) {
        this.iconCate = iconCate;
    }

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", name='" + nameCate + '\'' +
                ", iconCate='" + iconCate + '\'' +
                '}';
    }
}