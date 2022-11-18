import java.util.List;

public class Main {
    public static void main(String[] args) {
        ICustomerDal customerDal = new OracleCustomerDal();
        customerDal.getAll();

        ILogger[] loggers = {new DatabaseLogger(), new FileLogger()};

        CustomerManager customerManager = new CustomerManager(new MssqlCustomerDal(), loggers);

        customerManager.add(new Customer("Şüşü", "Meow", 4));

        List<Customer> customers = customerManager.getAll();
        for(Customer customer : customers){
            System.out.println(customer.getFirstName());
        }
    }
}