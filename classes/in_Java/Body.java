// WARNING: This file is auto-generated and any changes to it will be overwritten
import lang.stride.*;

/**
 * What: Bodies are objects with velocity and position.
 * Why: It is used by Love2d in bundle with Shape and Fixture to handle physics.
 * Origin: Copy of a Body Class from Love2d.
 */
public class Body
{
    /* (x, y) coordinates of a body. Most of the time it's a center of mass.*/
    private int x;
    private int y;
    /* Body can be of type: static, dynamic, kinematic*/
    private BodyType type;

    /**
     * Important note: we use world.add(this) to add this newly created body to the specified world.
     */
    public Body(World world, int x, int y, BodyType type)
    {
        this.x = x;
        this.y = y;
        this.type = type;
        world.add(this);
    }
}
