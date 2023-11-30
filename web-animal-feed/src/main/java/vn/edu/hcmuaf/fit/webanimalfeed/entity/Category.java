package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Category {
    private int id;
    private String name;
    private String iconCate;

    public Category(String name, String iconCate) {
        this.name = name;
        this.iconCate = iconCate;

    }

    public Category(int id, String name, String iconCate) {
        this.id = id;
        this.name = name;
        this.iconCate = iconCate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
                ", name='" + name + '\'' +
                ", iconCate='" + iconCate + '\'' +
                '}';
    }
}