import lang.stride.*;

/**
 * What: Child of PhysicalObject.
 * Why: We need separate drawing functions for rectangle and circle.
 * Origin: Self made
 */
public abstract class RectangularObject extends PhysicalObject
{

    /**
     * it is what it is.
     * Creates new Body, new RectangleShape, and passes them to supeclass constructor.
     */
    public RectangularObject(World world, int px, int py, int width, int height, Color color)
    {
        super(
            new Body(world, px, py, BodyType.STATIC),
            new RectangleShape(width, height),
            color
        );
    }

    /**
     * Drawing function.
     */
    public void draw()
    {
        System.out.println("Draweded Rectangle");
    }
}
