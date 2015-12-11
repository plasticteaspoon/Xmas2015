class TreeCostume implements IDrawable
{
    public void drawAtOrigin()
    {
        //the foliage
        fill(0, 225, 0);
        triangle(0, -250, 300, -1300, 600, -250);
        //the trunk
        fill(102, 51, 0);
        rect(200, 0, 180, -250);
    }
    public float getHeight()
    {
        return 0;
    }    
    public float getWidth()
    {
        return 0;
    }
}