public class Entrance extends StageDirection
{
    PVector _position;
    
    public Entrance(Actor actor, int startTime, float x, float y, float z)
    {
        super(actor, startTime);
        _position = new PVector(x, y, z);
    }
    
    public Entrance(ArrayList<Actor> actors, int startTime, float x, float y, float z)
    {
        super(actors, startTime);
        _position = new PVector(x, y, z);
    }
    
    public void execute(int time)
    {
        for(Actor actor : _actors)
        {
            actor.enterStage(_position);
        }
    }
}