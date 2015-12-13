public class Movement extends StageDirection
{
    PVector _vector;    //the direction of movement
    
    public Movement(Actor actor, int startTime, int duration, PVector direction)
    {
        super(actor, startTime, duration);
        
        _vector = direction;
    }
    
    public Movement(ArrayList<Actor> actors, int startTime, int duration, PVector direction)
    {
        super(actors, startTime, duration);
        
        _vector = direction;
    }
    
    public void execute(int time)
    {
        for(Actor actor : _actors)
        {
            actor.move(_vector);
        }
    }
}