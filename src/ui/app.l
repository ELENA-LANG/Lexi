public class MainWindow : interface<Window>
{
    WindowImp imp;
    Glyph     root;
    
    [info:"the program start"]
    constructor new()
    {
        imp := forward windowSystemFactory.createWindowImpl();
    }
    
    [info:"extending a Window with WindowImp.Handle"]
    dispatch() => imp.Handle; 
}