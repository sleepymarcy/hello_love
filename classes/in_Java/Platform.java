/**
 * What: Child of RectangularObject.
 * 
 * Why: We need separate drawing functions for rectangle and circle.
 * 
 * Origin: Self made
 */
public class Platform extends RectangularObject {
    public final static int DEFAULT_WIDTH = 100;
    public final static int DEFAULT_HEIGHT = 20;
    public final static Color DEFAULT_COLOR = new Color(1, 1, 1);
    public final static BodyType DEFAULT_TYPE = BodyType.STATIC;

    public Platform(World world, int px, int py, int width, int height, Color color, BodyType type) {
        super(world, px, py, width, height, color, type);
    }

    public Platform(World world, int px, int py) {
        this(world, px, py, DEFAULT_WIDTH, DEFAULT_HEIGHT, DEFAULT_COLOR, DEFAULT_TYPE);
    }

    public void draw() {
        System.out.print("Platform!");
        super.draw();
    }

}
