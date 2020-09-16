public class MonoGlyph : Glyph
{
    Glyph component;
    
    constructor()
    {
    } 
    
    insert(Glyph g)
    {
        if (component == nil)
        {
            component := g
        }
        else
        {
            InvalidOperationException.raise()
        }
    }
    
    draw(Window w)
        => component;
}