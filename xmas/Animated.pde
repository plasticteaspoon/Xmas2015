
//base class for screen items

public abstract class Animated
{
    private float _x, _y;
    
    //move to a point on the screen
    public final void moveTo(float x, float y)
    {
        _x = x;
        _y = y;
    }
    
    //draws the shape 
    public final void Draw()
    {
        
    }
    
    //draw centred on 0, 0
    protected abstract void drawAtOrigin();

    //return the maximum height of the shape 
    protected abstract float getHeight();

    //return the maximum width of the shape 
    protected abstract float getWidth();
}