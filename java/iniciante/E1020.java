package beecrowd;

import java.util.Scanner;

public class E1020 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

		int idade = scanner.nextInt();

		int anos;
		int meses;
		int dias;
		int resto;

		anos = idade / 365;
		resto = idade % 365;

		meses = resto / 30;
		dias = resto % 30;

		System.out.println(anos + " ano(s)");
		System.out.println(meses + " mes(es)");
		System.out.println(dias + " dia(s)");

		scanner.close();

	}

}
