// WARNING: This file is auto-generated and any changes to it will be overwritten
import lang.stride.*;

/**
 * What: Shorthand for creating rectangular PolygonShapes.
 * Why: So it's easier for us to create specific kind of shape.
 * Origin: Copy of a constructor newRectangleShape from class Shape from Love2d.
 */
public class RectangularObject extends PhysicalObject
{

    /**
     * 
     */
    public RectangularObject(World world, int px, int py, int width, int height, Color color)
    {
        super( new  Body(world, px, py, BodyType.STATIC),  new  RectangleShape(width, height), color);
    }

    /**
     * 
     */
    public void draw()
    {
        System.out.println("Draweded Rectangle");
    }
}
