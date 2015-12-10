//Jessica and Paul Drury December 2015


ArrayList<Animated> screenItems = new ArrayList<Animated>();

void setup()
{
    size(1024, 768);
    Tree tree = new Tree();
    
    screenItems.add(tree);
}

void draw() 
{
    scale(0.25);
    screenItems.get(0).draw();
}