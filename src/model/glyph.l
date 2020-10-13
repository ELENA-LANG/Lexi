public interface Glyph
{
    abstract draw(Window w, int x, int y);
    
    abstract insert(Glyph g);
    
    abstract bound(ref int width, ref int height);
}