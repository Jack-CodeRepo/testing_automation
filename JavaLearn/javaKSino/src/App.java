

import java.util.InputMismatchException;
import java.util.Random; 
import java.util.Scanner;

public class App {
    static Scanner sc = new Scanner(System.in);
    static Random rand = new Random();
    public static void main(String[] args) throws Exception {
        game();
        }

    public static void game() {
        int maxCase = 10;
        int credit = 100;
        String choice = "\n1) Oui  \n2) Non";

        System.out.println("Hey! \nCa va ? " + choice);
        String input = sc.nextLine();
        System.out.println("Bon ... entre nous ...");
        System.out.println("Que vous disiez " +input+ " ou autre choses ...");
        System.out.println(("C'est la même chose !"));
        System.out.println("... vous êtes dans un K_Sino ! \nJouez Donc!");

        boolean gameloop = true;

        while (gameloop){
            int caseBet = 0;
            int credBet = 0;
            int caseNum = getRandomInt(maxCase);

            while (true) {
                System.out.println("Sur quelle case misez-vous ? \n(nombre compris entre 1 et " +maxCase+ ")");
                caseBet = checkInputAsInt();
                if (caseBet > 0 && caseBet <= maxCase) {
                    break;}
            }
            while (true) {
                System.out.println("Combien de crédit misez-vous ? \n(nombre compris entre 1 et " +credit+ ")");
                credBet = checkInputAsInt();
                if (credBet > 0 && credBet <= credit) {
                    break;}
            }

            if (caseBet == caseNum) {
                System.out.println("Vous gagnez votre mise.");
                credit += credBet;}
            else if (caseBet%2 == caseNum%2) {
                System.out.println("Vous gagnez la moitié de votre mise.");
                credit += credBet/2;}
            else {
                System.out.println("Vous perdez votre mise.");
                credit -= credBet;}
            
            System.out.println("Voulez-vous continuer à jouer ? [credits=" +credit+ "] " +choice);
            int nswr = checkInputAsInt();
            if (nswr == 2) {
                System.out.println("Vous quittez le K_Sino avec " +credit+ " credits en poche.");
                break;}
        }
    }

    public static String returnStrArg(String Arg) {
        String value = Arg;
        return value;}

    public static int getRandomInt(int max){
        int value = rand.nextInt(max);
        return value;}

    public static int checkInputAsInt() {
        while (true) {
            try {
                int input = sc.nextInt();
                return input;}
            catch (InputMismatchException e) {
                System.out.print("Merci de saisir des chiffres entiers.");
                sc.nextInt();}
        }
    }
}


