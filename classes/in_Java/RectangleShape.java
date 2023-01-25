import java.util.ArrayList;

public class RectangleShape extends Shape
{
    protected int width;
    protected int height;
    
    public RectangleShape(int width, int height)
    {
        this.width = width;
        this.height = height;
    }
    
    public int getWidth()
    {
        return width;
    }
    
    public int getHeight()
    {
        return height;
    }
    
    public int getRadius()
    {
        return this.radius;
    }
}
