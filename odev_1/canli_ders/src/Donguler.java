public class Donguler {
    public static void main(String[] args) {

        String urun = "Laptop";
        for (int sayac = 1; sayac < 10; sayac++) {
            System.out.println(urun + sayac);
        }

        for (int i = 0; i <= 10; i += 2) {
            System.out.println(i);
        }

        int sayi = 10;
        while (sayi <= 100) {
            System.out.println(sayi);
            sayi = sayi + 10;
        }

        int sayi2 = 11;
        do {
            System.out.println(sayi2);
            sayi = sayi + 10;
        } while (sayi2 > 100);

    }
}