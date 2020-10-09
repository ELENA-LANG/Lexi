public sealed Character : LeafGlyph
{
    char ch;
    
    constructor(char ch)
    {
        this ch := ch
    }
    
    draw(Window w) 
    {
        w.drawChar(ch)
    }
}