/**
 * What: Shapes are objects used to control mass and collisions.
 * Why: It is used by Love2d in bundle with Body and Fixture to handle physics.
 * Origin: Copy of a Shape Class from Love2d.
 */
public abstract class Shape {
    protected int radius;

    public Shape(int radius) {
        this.radius = radius;
    }

    /**
     * Returns radius to the outsider because this is private.
     */
    public int getRadius() {
        return radius;
    }
}
