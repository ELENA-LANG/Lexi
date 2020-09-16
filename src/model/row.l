import system'collections;

public class Row : Glyph
{
    List<Glyph> children := new List<Glyph>();
    
    draw(Window w)
    {
        int len := children.Length;
        for (int i := 0, i < len, i += 1)
        {
            children[i].draw(w)
        }
    }
        
    insert(Glyph g)
    {
        children.insert(g);
    }
}