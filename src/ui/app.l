public sealed class MainWindow : Object, interface<Window>
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
    }
    
    redraw()
    {
        glyph.draw(self)
    }
    
    [info:"extending a Window with WindowImp.Handle"]
    dispatch() => imp.Handle; 
}