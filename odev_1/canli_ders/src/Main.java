import java.util.ArrayList;

public class Main {
    //SOLID
    public static void main(String[] args) {

        ArrayList<String> sehirler = new ArrayList<>();

        ArrayList<CreditManager> credits = new ArrayList<CreditManager>();
        credits.add(new MortgageManager());
        credits.add(new VehicleManager());
        credits.add(new OfficerManager());

        for (CreditManager credit : credits) {
            credit.calculate();
        }
    }
}
