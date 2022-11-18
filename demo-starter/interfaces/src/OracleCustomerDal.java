import java.util.ArrayList;
import java.util.List;

public class OracleCustomerDal implements ICustomerDal {

    private List<Customer> customers = new ArrayList<>();

    public OracleCustomerDal() {
        customers.add(new Customer("Furkan", "Çakıroğlu", 22));
        customers.add(new Customer("Emre", "Çakıroğlu", 22));
        customers.add(new Customer("Merve", "Çakıroğlu", 27));
    }
    @Override
    public List<Customer> getAll() {
        return customers;
    }

    @Override
    public void add(Customer customer) {
        customers.add(customer);
    }
}
