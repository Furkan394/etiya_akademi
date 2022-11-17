public class ProductValidator {

    static {
        System.out.println("Static yapıcı blok çalıştı");
    }

    public ProductValidator() {
        System.out.println("Yapıcı blok çalıştı");
    }

    public static boolean isValid(Product product) {
        if (product.getPrice() > 0 && !product.getName().isEmpty()) {
            return true;
        } else {
            return false;
        }
    }

    public void bisey() {

    }
}