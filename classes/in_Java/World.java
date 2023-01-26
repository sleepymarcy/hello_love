import java.util.ArrayList;
import java.util.Random;

/**
 * What: World is a container for our physical objects
 * (actually just their bodies).
 * Why: We had to create World because the body constructor needs it to exist.
 * 
 * Origin: Copy of a World Class from Love2d.
 */
public class World {
    /* A number identifying the created world. Managed by Love2d. */
    private final int id;
    /* This represents a Love2d table of bodies passed to World. */
    private ArrayList<Body> bodies;

    /**
     * this.id is initialised with a random number so we can tell
     * which World is which if we have bunch of them
     * bodies is initialised with a freshly made ArrayList
     */
    public World() {
        this.id = new Random().nextInt(1000);
        bodies = new ArrayList<Body>();
    }

    /**
     * What: add is a method used to add an existing body to this
     * worlds list of bodies.
     * 
     * Why: because without it constructor of class Body would't
     * be able to add new body to the array list because the list is PRIVATE.
     */
    public void add(Body body) {
        bodies.add(body);
    }
}
