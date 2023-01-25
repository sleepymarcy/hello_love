public class Body
{
    private int x;
    private int y;
    private BodyType type;
    
    public Body(World world, int x, int y, BodyType type)
    {
        this.x = x;
        this.y = y;
        this.type = type;
        world.add(this);
    }
}
