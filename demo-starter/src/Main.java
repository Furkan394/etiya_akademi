import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");
        System.out.println("Merhaba Etiya");

        String text = "Bu bir değişkendir";
        System.out.println(text);

        String numberTen = "10";
        int number = 10;
        double dNumber = 10.5;
        char character = 'A';

        System.out.println(dNumber + 5);
        System.out.println(dNumber - 5);
        System.out.println(dNumber * 5);
        System.out.println(dNumber / 5);
        System.out.println(number % 3);

        boolean isVerified = false;
        System.out.println(isVerified);

        System.out.println(5 == number);
        System.out.println(5 != number);
        System.out.println(5 >= number);
        System.out.println(5 <= number);

        double dolarAlis = 18.5407;
        double dolarSatis = 18.8407;
        double dolarAlisDun = 18.5407;

        System.out.println(dolarAlis);
        System.out.println(dolarSatis);
        System.out.println(dolarAlis > dolarAlisDun);

        // Karar blokları
        if (dolarAlis > dolarAlisDun) {
            System.out.println("Dolar kuru arttı");
        } else if (dolarAlis == dolarAlisDun) {
            System.out.println("Dolar kuru sabit kalmıştır");
        } else {
            System.out.println("Dolar kuru azaldı");
        }

        int givenNumber = 9;
        if (givenNumber % 2 == 0) {
            System.out.println("Verilen sayı çifttir");
        } else {
            System.out.println("Verilen sayı tektir");
        }


        String status = "A";

        // A = Sipariş alındı
        // B = Sipariş hazırlanıyor
        // C = Sipariş kargoya verildi
        // D = Sipariş teslim edildi
        // E = Sipariş iade edildi

        // switch-case yapısı

        switch (status) {
            case "A":
                System.out.println("Sipariş alındı");
                break;
            case "B":
                System.out.println("Sipariş hazırlanıyor");
                break;
            case "C":
                System.out.println("Sipariş kargoya verildi");
                break;
            case "D":
                System.out.println("Sipariş teslim edildi");
                break;
            case "E":
                System.out.println("Sipariş iade edildi");
                break;
            default:
                System.out.println("Unknown status");
        }

        for (int i = 0; i < 10; i++) {
            System.out.println(i);
        }

        // Array, List

        String[] cars = {"Tesla", "Audi", "Volvo"};

        // iteration
        for (String car : cars) {
            System.out.println(car);
        }

        for (int i = 0; i < cars.length; i++) {
            System.out.println(cars[i]);
        }

        List<String> carList = new ArrayList<>();
        carList.add("Mercedes");
        carList.add("BMW");

        for (String car : carList) {
            System.out.println(car);
        }

        int sayi = 0;
        while (sayi < 50) {
            System.out.println(sayi);
            sayi += 10;
        }
        System.out.println("******************************");
        int sayi2 = 90;
        do {
            //do-while için her zaman bir kez do çalışır sonra expressiona bakılır
            System.out.println(sayi2);
            sayi2 += 10;
        }
        while (sayi2 < 50);

        int number1 = 5;
        int number2 = 10;

        int sonuc = 0;
        sonuc = (number1 > number2) ? (number1 + number2) : (number1 - number2);
        System.out.println(sonuc);
    }
}