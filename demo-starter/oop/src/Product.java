public class Product {

    public Product() {
    }

    public Product(String name) {
        this.name = name;
    }

    public Product(String name, double unitPrice, int stock) {
        setName(name);
        setUnitPrice(unitPrice);
        setStock(stock);
    }

    private String name;
    private double unitPrice;
    private String imageUrl;
    private double discountRate;
    private int stock;

    public String getName() {
        return "Product: " + this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public double getDiscountRate() {
        return discountRate;
    }

    public void setDiscountRate(double discountRate) {
        if (discountRate > 50)
            discountRate = 50;
        this.discountRate = discountRate;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        if (stock < 0)
            stock = 0;
        this.stock = stock;
    }
}
