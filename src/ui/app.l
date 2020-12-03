public sealed class MainWindow : /*Object, */interface<Window>
{
    WindowImp  imp;
    Glyph      glyph;
    
    [info:"the program start"]
    constructor new()
    {
        imp := forward windowSystemFactory.createWindowImpl();
        
        imp.OnRedraw := { self.redraw() };
        
        glyph := new Composition<SimpleCompositor>();
        
        glyph.insert(new Character($65));
        glyph.insert(new Character($66));
        glyph.insert(new Character($67));
    }
    
    redraw()
    {
        glyph.draw(self, 10, 10)
    }
    
    drawChar(char ch, int x, int y)
    {
        imp.deviceDrawChar(ch, x, y)
    }
    
    [info:"extending a Window with WindowImp.Handle"]
    dispatch() => imp.Handle; 
}