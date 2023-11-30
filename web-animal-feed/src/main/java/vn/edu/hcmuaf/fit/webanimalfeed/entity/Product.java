package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Product {
    private int id;
    private String name;
    private String nameDetail;
    private double price;
    private String ingredients;
    private String nutritionInfo;
    private String usageInstruction;
    private String urlImage;

    public Product() {
    }

    public Product(int id, String name, String nameDetail, double price, String ingredients, String nutritionInfo, String usageInstruction, String urlImage) {
        this.id = id;
        this.name = name;
        this.nameDetail = nameDetail;
        this.price = price;
        this.ingredients = ingredients;
        this.nutritionInfo = nutritionInfo;
        this.usageInstruction = usageInstruction;
        this.urlImage = urlImage;
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

    public String getNameDetail() {
        return nameDetail;
    }

    public void setNameDetail(String nameDetail) {
        this.nameDetail = nameDetail;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getIngredients() {
        return ingredients;
    }

    public void setIngredients(String ingredients) {
        this.ingredients = ingredients;
    }

    public String getNutritionInfo() {
        return nutritionInfo;
    }

    public void setNutritionInfo(String nutritionInfo) {
        this.nutritionInfo = nutritionInfo;
    }

    public String getUsageInstruction() {
        return usageInstruction;
    }

    public void setUsageInstruction(String usageInstruction) {
        this.usageInstruction = usageInstruction;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", nameDetail='" + nameDetail + '\'' +
                ", price=" + price +
                ", ingredients='" + ingredients + '\'' +
                ", nutritionInfo='" + nutritionInfo + '\'' +
                ", usageInstruction='" + usageInstruction + '\'' +
                ", urlImage='" + urlImage + '\'' +
                '}';
    }
}
