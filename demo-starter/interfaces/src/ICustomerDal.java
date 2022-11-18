import java.util.List;

public interface ICustomerDal {
    List<Customer> getAll();

    void add(Customer customer);
}
