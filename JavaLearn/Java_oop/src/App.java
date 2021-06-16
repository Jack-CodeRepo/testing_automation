
import player.Player;

public class App {
    public static void main(String[] args) throws Exception {
        Player pl = new Player("Jean");
        
        System.out.println("Hello, " +pl.getName());
        System.out.println("Attack is " +pl.getAttack());
        System.out.println("Armor is " +pl.getArmor());
        System.out.println("Health is " +pl.getHealth());

        System.out.println("Hello, World! - 02");
        pl.setName("Georges");
        pl.setAttack(1);
        pl.setArmor(42);
        pl.setHealth(777);
        System.out.println("Hello, " +pl.getName());
        System.out.println("Attack is " +pl.getAttack());
        System.out.println("Armor is " +pl.getArmor());
        System.out.println("Health is " +pl.getHealth());

    }
}
