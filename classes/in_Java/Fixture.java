public class Fixture
{
    protected Body body;
    protected Shape shape;
    
    public Fixture(Body body, Shape shape)
    {
        this.body = body;
        this.shape = shape;
    }
    
    public Body getBody()
    {
        return body;
    }
    
    public Shape getShape()
    {
        return shape;
    }
}
