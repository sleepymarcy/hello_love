/**
 * What: Child of PhysicalObject.
 * 
 * Why: We need separate drawing functions for rectangle and circle.
 * 
 * Origin: Self made
 */
public abstract class CircularObject extends PhysicalObject {

    /**
     * it is what it is.
     * Creates new Body, new CircularShape, and passes them to supeclass
     * constructor.
     */
    public CircularObject(World world, int px, int py, int radius, Color color) {
        super(
                new Body(world, px, py, BodyType.STATIC),
                new CircularShape(radius),
                color);
    }

    /**
     * Drawing function.
     */
    public void draw() {
        System.out.println("Draweded Circelele");
        System.out.println("Coords: " + this.body.getX() + ", " + this.body.getY());
        System.out.println("Radius: " + this.shape.getRadius());
    }
}
