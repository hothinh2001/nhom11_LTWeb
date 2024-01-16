package vn.edu.hcmuaf.fit.webanimalfeed.entity;

public class Product {
    private int id;
    private String name;
    private String nameDetail;
    private int price;
    private String ingredients;
    private String nutritionInfo;
    private String usageInstruction;
    private String urlImage;
    private Category category;
    private Brand brand;
    private Inventory inventory;
    private int quantityAvailable;

    public Product(int id, String name, String nameDetail, int price, String ingredients,
                   String nutritionInfo, String usageInstruction, String urlImage) {
        this.id = id;
        this.name = name;
        this.nameDetail = nameDetail;
        this.price = price;
        this.ingredients = ingredients;
        this.nutritionInfo = nutritionInfo;
        this.usageInstruction = usageInstruction;
        this.urlImage = urlImage;
    }

    public Product(int id, String name, String nameDetail, int price, String ingredients,
                   String nutritionInfo, String usageInstruction, String urlImage, Category category,
                   Brand brand, Inventory inventory, int quantityAvailable) {
        this.id = id;
        this.name = name;
        this.nameDetail = nameDetail;
        this.price = price;
        this.ingredients = ingredients;
        this.nutritionInfo = nutritionInfo;
        this.usageInstruction = usageInstruction;
        this.urlImage = urlImage;
        this.category = category;
        this.brand = brand;
        this.inventory = inventory;
        this.quantityAvailable = quantityAvailable;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
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

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Brand getBrand() {
        return brand;
    }

    public void setBrand(Brand brand) {
        this.brand = brand;
    }

    public Inventory getInventory() {
        return inventory;
    }

    public void setInventory(Inventory inventory) {
        this.inventory = inventory;
    }


    public int getQuantityAvailable() {
        return quantityAvailable;
    }

    public void setQuantityAvailable(int quantityAvailable) {
        this.quantityAvailable = quantityAvailable;
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
                ", category=" + category +
                ", brand=" + brand +
                ", inventory=" + inventory +
                ", quantityAvailable=" + quantityAvailable +
                '}';
    }

    //    get Invetory Id
    public int getInventoryId() {
        return this.inventory.getId();
    }

    //    get Brand Id
    public int getBrandId() {
        return this.brand.getId();
    }

//    get Category Id

    public int getCategoryId() {
        return this.category.getId();
    }
}
