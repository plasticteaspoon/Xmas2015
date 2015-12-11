public abstract class StageDirection
{
    protected Actor _actor;
    protected int _startTime;
    protected int _duration;
    
    //construct a one-off action
    public StageDirection(Actor actor, int time)
    {
        _startTime = time;
        _duration = 0;
        _actor = actor;
    }
    
    //construct an action with a duration
    public StageDirection(Actor actor, int startTime, int duration)
    {
        _startTime = startTime;
        _duration = duration;
        _actor = actor;
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

public class Entrance extends StageDirection
{
    public Entrance(Actor actor, int startTime, float x, float y, float z)
    {
        super(actor, startTime);
        actor.goTo(new PVector(x, y, z));
    }
    
    public void execute(int time)
    {
        _actor.enterStage();      
    }
}

public class Exit extends StageDirection
{
    public Exit(Actor actor, int startTime)
    {
        super(actor, startTime);
    }
    
    public void execute(int time)
    {
        _actor.exitStage();      
    }
}

public class Movement extends StageDirection
{
    PVector _vector;    //the direction of movement
    
    public Movement(Actor actor, int startTime, int duration, PVector direction)
    {
        super(actor, startTime, duration);
        
        _vector = direction;
    }
    
    public void execute(int time)
    {
        _actor.move(_vector);      
    }
}