public class RectangularObject extends PhysicalObject
{
    public RectangularObject(World world, int px, int py, int width, int height, Color color)
    {
        super(
            new Body(world,px, py,BodyType.STATIC),
            new RectangleShape(width, height),
            color
        );
    }
    
    public void draw()
    {
        System.out.println("Draweded Rectangle");
    }
}
