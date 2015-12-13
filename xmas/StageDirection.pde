public abstract class StageDirection
{
    protected ArrayList<Actor> _actors;
    protected int _startTime;
    protected int _duration;
    
    //construct a one-off action
    public StageDirection(ArrayList<Actor> actors, int time)
    {
        _startTime = time;
        _duration = 0;
        _actors = actors;
    }
    
    //construct a one-off action
    public StageDirection(Actor actor, int time)
    {
        _startTime = time;
        _duration = 0;
        _actors = new ArrayList<Actor>();
        _actors.add(actor);
    }
    
    //construct an action with a duration
    public StageDirection(Actor actor, int startTime, int duration)
    {
        this(actor, startTime);
        _duration = duration;
    }
    
    //construct an action with a duration
    public StageDirection(ArrayList<Actor> actors, int startTime, int duration)
    {
        this(actors, startTime);
        _duration = duration;
    }
    
    public abstract void execute(int time);
    
    protected final boolean isCurrent(int time)
    {
        if (_duration == 0)
        {
            return _startTime == time;
        }
        else
        {
            return time >= _startTime && time - _startTime < _duration;
        }
    }
}