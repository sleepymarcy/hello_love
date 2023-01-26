/**
 * What: Circular shape.
 * 
 * Why: So it's easier for us to create specific kind of shape.
 * This is identical as Shape but it's not abstract.
 * 
 * Origin: Copy of a constructor newCircleShape from class Shape from Love2d.
 */
public class CircularShape extends Shape {
    /**
     * Creates circular shape of given radius, using the superclass constructor.
     */
    public CircularShape(int radius) {
        super(radius);
    }
}
