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
    
    draw(Window w, int x, int y)
        => component;
        
    bound(ref int width, ref int height)
    {
        component.bound(ref width, ref height)
    }        
}