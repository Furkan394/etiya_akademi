import java.util.List;

public class CustomerManager {

    private ICustomerDal customerDal;
    private ILogger[] loggers;

    public CustomerManager(ICustomerDal customerDal, ILogger[] logger) {
        this.customerDal = customerDal;
        this.loggers = logger;
    }

    public void add(Customer customer) {
        customerDal.add(customer);
        for (ILogger logger : loggers) {
            logger.log();
        }
    }

    public List<Customer> getAll() {
        return customerDal.getAll();
    }
}
