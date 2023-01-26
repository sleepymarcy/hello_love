// WARNING: This file is auto-generated and any changes to it will be overwritten
import lang.stride.*;
import java.util.ArrayList;

/**
 * What: Shorthand for creating rectangular PolygonShapes.
 * Why: So it's easier for us to create specific kind of shape.
 * Origin: Copy of a constructor newRectangleShape from class Shape from Love2d.
 */
public class RectangleShape extends Shape
{
    protected int width;
    protected int height;

    /**
     * Takes width, height that are passed on when the constructor is called and assigns them to this.width, this.height
     */
    public RectangleShape(int width, int height)
    {
        this.width = width;
        this.height = height;
    }

    /**
     * 
     */
    public int getWidth()
    {
        return width;
    }

    /**
     * 
     */
    public int getHeight()
    {
        return height;
    }

    /**
     * 
     */
    public int getRadius()
    {
        return this.radius;
    }
}
