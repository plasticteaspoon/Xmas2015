//base class for screen items
public class Actor
{
    private PVector _position;
    private IDrawable _costume;
    private boolean _visible = false;
    
    public Actor(IDrawable costume)
    {
        _position = new PVector(0, 0, 8);
        _costume = costume;
    }
    
    //go onto the stage
    public void enterStage(PVector position)
    {
        _position = position;
        _visible = true;
    }
    
    //leave the stage
    public void exitStage()
    {
        _visible = false;
    }

    //move to a point on the screen
    public final void goTo(PVector position)
    {
        _position = position;
    }
    
    public final void move(PVector vector)
    {
        _position = _position.add(vector);
    }
    
    //draws the shape 
    public final void draw()
    {
        if (_visible)
        {
            pushMatrix();
    
            translate(_position.x, _position.y);
            scale(1 / (1 + _position.z));
    
            _costume.drawAtOrigin();
    
            popMatrix();
        }
    }
    
 }