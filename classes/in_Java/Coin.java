/**
 * What: Child of CircularObject.
 * 
 * Origin: Self made
 */
public class Coin extends CircularObject {
    public final static int DEFAULT_RADIUS = 10;
    public final static Color DEFAULT_COLOR = new Color(1, 1, 0);
    public final static BodyType DEFAULT_TYPE = BodyType.STATIC;

    public Coin(World world, int px, int py, int radius, Color color, BodyType type) {
        super(world, px, py, radius, color, type);
    }

    public Coin(World world, int px, int py) {
        this(world, px, py, DEFAULT_RADIUS, DEFAULT_COLOR, DEFAULT_TYPE);
    }

    public void draw() {
        System.out.println("Coin!");
        super.draw();
    }
}
