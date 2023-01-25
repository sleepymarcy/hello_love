import java.util.ArrayList;
import java.util.Random;

public class World
{
    private int id;
    private ArrayList<Body> bodies;
    
    public World()
    {
        this.id = new Random().nextInt(1000);
        bodies = new ArrayList<Body>();
    }
    
    public void add(Body body)
    {
        bodies.add(body);
    }
}
