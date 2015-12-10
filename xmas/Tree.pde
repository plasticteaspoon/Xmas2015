class Tree extends Animated
{
    protected void drawAtOrigin()
    {
        fill(0, 225, 0);
        triangle(0, -250, 300, -1300, 600, -250);
        fill(102, 51, 0);
        rect(200, 0, 180, -250);
    }
    protected float getHeight()
    {
        return 0;
    }    
    protected float getWidth()
    {
        return 0;
    }
}