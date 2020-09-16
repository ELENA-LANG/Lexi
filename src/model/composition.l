import system'collections;

public class Composition : Row
{
    Compositor  compositor;
    
    insert(Glyph g)
    {
        super.insert(g);
        
        compositor.compose();
    }    
}

public class SimpleComposition/*<T>*/ : Composition
{
    constructor()
    {
        this compositor := new /*T*/SimpleCompositor();
        compositor.setComposition(self);
        
        children := new List<Glyph>(); // !! temporal
    }
        
}