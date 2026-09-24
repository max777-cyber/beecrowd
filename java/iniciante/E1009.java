import java.io.IOException;
import java.util.Locale;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) throws IOException {

        Locale.setDefault(Locale.US);

        Scanner scanner = new Scanner(System.in);

        String nome = scanner.nextLine();
        double salario = scanner.nextDouble();
        double Vvendas = scanner.nextDouble();
        double total = salario + (Vvendas * 0.15);

        System.out.printf("TOTAL = R$ %.2f%n", total);
    }
}
