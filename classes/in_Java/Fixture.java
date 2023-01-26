/**
 * What: Fixtures attach shapes to bodies.
 * 
 * Why: Because What + Origin.
 * 
 * Origin: Copy of a Fixture Class from Love2d.
 */
public class Fixture {
    protected Body body;
    protected Shape shape;

    /**
     * Welds a shape to the body together, it's from Love2d
     * 
     * Why: To create fixture.
     */
    public Fixture(Body body, Shape shape) {
        this.body = body;
        this.shape = shape;
    }

    /**
     * Returns the body to the outsider because this is private.
     */
    public Body getBody() {
        return this.body;
    }

    /**
     * Returns the shape to the outsider because this is private.
     */
    public Shape getShape() {
        return this.shape;
    }
}
