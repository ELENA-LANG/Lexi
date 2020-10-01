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

public class Composition<T> : Composition
{
    constructor()
    {
        this compositor := new T();
        compositor.setComposition(self);
    }
        
}