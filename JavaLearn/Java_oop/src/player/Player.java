package player;


/**
 * player
 */
public class Player {
    String name;
    int health = 10;
    int attack = 10;
    int armor = 10;

    public Player(String myName) {
        name = myName;
        System.out.println("Constructing object as" +this.name );
    }

    public String getName(){
        return name;}
    public void setName(String value){
        this.name = value;}

    public int getHealth(){
        return health;}
    public void setHealth(int value){
        this.health = value;}

    public int getAttack(){
        return attack;}
    public void setAttack(int value){
        this.attack = value;}

    public int getArmor(){
        return armor;}
    public void setArmor(int value){
        this.armor = value;}

}