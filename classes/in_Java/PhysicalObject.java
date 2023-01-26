// WARNING: This file is auto-generated and any changes to it will be overwritten
import lang.stride.*;

/**
 * What: Class that gets info from body, shape, fixture and color and draws itself
 * Why:
 *  Origin: 
 */
public abstract class PhysicalObject
{
    protected Body body;
    protected Shape shape;
    protected Fixture fixture;
    protected Color color;

    /**
     * 
     */
    public PhysicalObject(Body body, Shape shape, Color color)
    {
        this.body = body;
        this.shape = shape;
        this.fixture =  new  Fixture(this.body, this.shape);
        this.color = color;
    }

    /**
     * 
     */
    public Body getBody()
    {
        return body;
    }

    /**
     * 
     */
    public Shape getShape()
    {
        return shape;
    }

    /**
     * 
     */
    abstract void draw();
}
