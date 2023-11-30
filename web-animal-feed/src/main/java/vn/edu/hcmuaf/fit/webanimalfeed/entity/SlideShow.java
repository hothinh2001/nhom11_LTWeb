package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class SlideShow {
    private int id;
    private String urlImage;

    public SlideShow() {
    }

    public SlideShow(int id, String urlImage) {
        this.id = id;
        this.urlImage = urlImage;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    @Override
    public String toString() {
        return "SlidseShow{" +
                "id=" + id +
                ", urlImage='" + urlImage + '\'' +
                '}';
    }
}
