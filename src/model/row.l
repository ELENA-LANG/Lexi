import system'collections;

public class Row : Glyph
{
    List<Glyph> children := new List<Glyph>();
    
    draw(Window w, int x, int y)
    {
        int cur_x := x;
        int len := children.Length;
        for (int i := 0, i < len, i += 1)
        {
            children[i].bound(ref int cur_w, ref int cur_h);
            
            children[i].draw(w, cur_x, y);
            
            cur_x += cur_w
        }
    }
        
    bound(ref int width, ref int height)
    {
        width := 0;
        height := 0;
        int len := children.Length;
        for (int i := 0, i < len, i += 1)
        {
            children[i].bound(ref int cur_w, ref int cur_h);
            
            width += cur_w;
            if (height < cur_h) {
                height := cur_h
            };
        }        
    }
        
    insert(Glyph g)
    {
        children.insert(g);
    }
}