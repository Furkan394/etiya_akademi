public class Employee extends Person {

    public Employee() {
        System.out.println("Employee constructor");
    }

    private double salary;
    private String companyName;

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
}
