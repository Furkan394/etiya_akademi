public class Diziler {
    public static void main(String[] args) {
        String[] sehirler1 = new String[]{"Ankara", "İstanbul", "İzmir"};

        String[] sehirler2 = new String[]{"Antep", "Diyarbakır", "Urfa"};

        sehirler1 = sehirler2;
        sehirler1[0] = "Adana";
        System.out.println(sehirler2[0]);

        int sayi1 = 10;
        int sayi2 = 20;
        sayi1 = sayi2;
        sayi2 = 30;
        System.out.println(sayi1);

        //Value types : bool, int, double...
        //Reference Types : array, class, abstract, interface
    }
}
