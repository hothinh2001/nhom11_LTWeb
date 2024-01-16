package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Brand {
    private int id;
    private String nameBrand;
    private String note;

    public Brand() {
    }

    public Brand(int id, String nameBrand, String note) {
        this.id = id;
        this.nameBrand = nameBrand;
        this.note = note;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameBrand() {
        return nameBrand;
    }

    public void setNameBrand(String nameBrand) {
        this.nameBrand = nameBrand;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Brand{" +
                "id=" + id +
                ", nameBrand='" + nameBrand + '\'' +
                ", note='" + note + '\'' +
                '}';
    }
}
