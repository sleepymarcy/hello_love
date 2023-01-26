// WARNING: This file is auto-generated and any changes to it will be overwritten
import lang.stride.*;
import java.util.ArrayList;
import java.lang.Math;

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
        // super(Math.sqrt(width*width+height*height)/2);
        super(-1);
        this.width = width;
        this.height = height;
    }

    /**
     * Return width to the outsider because this is private.
     */
    public int getWidth()
    {
        return width;
    }

    /**
     *  Return height to the outsider because this is private.
     */
    public int getHeight()
    {
        return height;
    }
}
