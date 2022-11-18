public class Main {
    public static void main(String[] args) {

        Product product1 = new Product();
        product1.setUnitPrice(50);
        product1.setName("Erkek deri bot");
        product1.setDiscountRate(13.5);
        product1.setImageUrl("bot.jpeg");
        product1.setStock(15);

        Product product2 = new Product();
        product2.setUnitPrice(10523);
        product2.setName("Laptop");

        Product product3 = new Product("TV");

        Product product4 = new Product("Monitor", 2000, -15);

        //System.out.println(product1.getName());
        //System.out.println(product3.getName());
        //System.out.println(product4.getStock());

        DortIslem dortIslem = new DortIslem();
        int toplam = dortIslem.topla(5, 10);
        int toplam2 = dortIslem.topla(5, 10, 20);
        //System.out.println(toplam);
        //System.out.println(toplam2);

        Employee employee = new Employee();
        employee.setFirstName("Emre");
        employee.setLastName("Çakıroğlu");
        employee.setSalary(68456);
        System.out.println(employee.getFirstName() + " " + employee.getLastName() + ": " + employee.getSalary());

    }
}