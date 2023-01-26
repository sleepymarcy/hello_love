/**
 * What: Abstract class that holds body, shape, fixture and color and has
 * an ability to draw.
 * 
 * Abstract - there must be a child class of this if we want ot use it.
 * It cannot be instanciated.
 * 
 * Why: It's a parent/grandparent or even a grand...grandparent that gives
 * this API to all of it's descendants.
 * 
 * Origin: Self made.
 */
public abstract class PhysicalObject {
    protected Body body;
    protected Shape shape;
    protected Fixture fixture;
    protected Color color;

    /**
     * Constructs a new object out of given body, shape and color.
     * Creates a new fixture wealding body and shape.
     */
    public PhysicalObject(Body body, Shape shape, Color color) {
        this.body = body;
        this.shape = shape;
        this.fixture = new Fixture(this.body, this.shape);
        this.color = color;
    }

    /**
     * returns body to the outsider, because it's protected/private.
     */
    public Body getBody() {
        return body;
    }

    /**
     * returns shape to the outsider, because it's protected/private.
     */
    public Shape getShape() {
        return shape;
    }

    /**
     * abstract - a method tha HAS to be defined in the children.
     */
    abstract void draw();
}
