public sealed Character : LeafGlyph
{
    char ch;
    
    constructor(char ch)
    {
        this ch := ch
    }
    
    draw(Window w, int x, int y) 
    {
        w.drawChar(ch, x, y)
    }
    
    bound(ref int width, ref int height)
    {
        width := 10;
        height := 10
    }
}