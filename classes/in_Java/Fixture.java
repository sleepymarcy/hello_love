// WARNING: This file is auto-generated and any changes to it will be overwritten
import lang.stride.*;

/**
 * What: Fixtures attach shapes to bodies. 
 * Why: Because What + Origin. 
 * Origin: Copy of a Fixture Class from Love2d.
 */
public class Fixture
{
    protected Body body;
    protected Shape shape;

    /**
     * Takes body, shape that are passed on when the constructor is called and assigns them to this.body, this.shape
     */
    public Fixture(Body body, Shape shape)
    {
        this.body = body;
        this.shape = shape;
    }

    /**
     * Returns the body the fixture is attached to.
     */
    public Body getBody()
    {
        return this.body;
    }

    /**
     * Returns the shape of the fixture.
     */
    public Shape getShape()
    {
        return this.shape;
    }
}
