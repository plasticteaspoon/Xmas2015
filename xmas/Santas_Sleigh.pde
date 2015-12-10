class Sleigh extends Animated
{
        protected void drawAtOrigin()
    {
        //the back
        rect(0, -650, 425, 650);
        //the seat
        rect(425, -325, 275, 325);
        //the side of footwell        
        rect(700, -100, 300, 100);
        //the footwell
        arc(1000, -275, 550, 550, PI + HALF_PI, 2*PI + HALF_PI, CHORD);
        //ellipse(1000, -275, 550, 550);
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