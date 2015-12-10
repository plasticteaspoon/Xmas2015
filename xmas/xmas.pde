//Jessica and Paul Drury December 2015


ArrayList<Animated> screenItems = new ArrayList<Animated>();

void setup()
{
    size(1024, 768);
    Tree tree = new Tree();
    tree.moveTo(300, 300);
    
    Sleigh sleigh = new Sleigh();
    sleigh.moveTo(500, 500);
    
    screenItems.add(tree);
    screenItems.add(sleigh);
    
}

void draw() 
{
    translate(300, 300);
    scale(0.25);
    screenItems.get(1).draw();
}