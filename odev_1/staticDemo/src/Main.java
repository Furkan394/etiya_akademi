public class Main {
    public static void main(String[] args) {
        ProductManager productManager = new ProductManager();
        Product product = new Product();
        product.setId(1);
        product.setName("Mouse");
        product.setPrice(280);

        productManager.add(product);

        //DatabaseHelper.Connection.createConnection();
    }
}