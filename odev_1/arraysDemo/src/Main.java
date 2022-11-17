public class Main {
    public static void main(String[] args) {
        String ogrenci1 = "Furkan";
        String ogrenci2 = "Emre";
        String ogrenci3 = "Merve";
        String ogrenci4 = "Şüşü";

        System.out.println(ogrenci1);
        System.out.println(ogrenci2);
        System.out.println(ogrenci3);
        System.out.println(ogrenci4);

        System.out.println("----------------------");

        String[] ogrenciler = new String[4];
        ogrenciler[0] = "Furkan";
        ogrenciler[1] = "Emre";
        ogrenciler[2] = "Merve";
        ogrenciler[3] = "Şüşü";
        //ogrenciler[4] = "Meow";

        for (int i = 0; i < ogrenciler.length; i++) {
            System.out.println(ogrenciler[i]);
        }

        System.out.println("----------------------");

        for (String ogrenci : ogrenciler) {
            System.out.println(ogrenci);
        }
    }
}