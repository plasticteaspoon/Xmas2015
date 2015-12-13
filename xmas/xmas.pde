//Jessica and Paul Drury December 2015

final int FRAMES_PER_SECOND = 18;

//create a list to hold the cast members
ArrayList<Actor> cast = new ArrayList<Actor>();

//create a list to hold the stage directions
ArrayList<StageDirection> script = new ArrayList<StageDirection>();

void setup()
{
    //set the size of the stage
    size(1024, 768);
    frameRate(FRAMES_PER_SECOND);
    
    //recruit the cast members
    recruitCast();
}

void draw() 
{
    //lets do the play!
    
    //loop through the stage directions and execute any actions that 
    //are scheduled for this frame 
    for(StageDirection direction : script)
    {
        if (direction.isCurrent(frameCount))
        {
            direction.execute(frameCount);
        }
    }

    //erase the screen
    background(255);
    
    //redraw the cast members
    for(Actor actor : cast)
    {
        actor.draw();
    }
}

void recruitCast()
{
    //create some cast members
    Actor tree1 = new Actor(new TreeCostume());
    cast.add(tree1);

    Actor tree2 = new Actor(new TreeCostume());
    cast.add(tree2);
    
    Actor sleigh = new Actor(new SleighCostume());
    cast.add(sleigh);
    
    //give the cast their stage directions
    script.add(new Entrance(tree1, F(1), 400, 600, 10));
    script.add(new Entrance(tree2, F(1), 600, 600, 10));

    ArrayList<Actor> trees = new ArrayList<Actor>();
    trees.add(tree1);
    trees.add(tree2);

    script.add(new Entrance(sleigh, F(2), 300, 300, 10));
    script.add(new Movement(trees, F(3), F(4), new PVector(-6, 0, 0)));
    script.add(new Movement(sleigh, F(3), F(10), new PVector(8, 0, 1)));
    //script.add(new Exit(sleigh, F(6)));
    script.add(new Exit(trees, F(7)));
}


int F(int seconds)
{
    return seconds * FRAMES_PER_SECOND;
}