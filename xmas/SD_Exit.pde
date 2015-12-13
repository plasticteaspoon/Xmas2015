public class Exit extends StageDirection
{
    public Exit(Actor actor, int startTime)
    {
        super(actor, startTime);
    }
    
    public Exit(ArrayList<Actor> actors, int startTime)
    {
        super(actors, startTime);
    }
    
    public void execute(int time)
    {
        for(Actor actor : _actors)
        {
            actor.exitStage();
        }
    }
}