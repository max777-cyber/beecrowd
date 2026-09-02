import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int numF = scanner.nextInt();
        int horasT = scanner.nextInt();
        double valorH = scanner.nextDouble();
        double salario = horasT * valorH;
        System.out.println("NUMBER = " + numF);
        System.out.printf("SALARY = U$ %.2f%n", salario);
        scanner.close();
    }
}
