public interface Glyph
{
    abstract draw(Window w);
    
    draw(o)
        <= draw(cast Window(o));
    
    abstract insert(Glyph g);
}