public class MainWindow : interface<Window>
{
    WindowImp imp;
    
    // the program start
    constructor new()
    {
        imp := forward windowSystemFactory.createWindowImpl();
    }
    
    // extending a Window with WindowImp.Handle
    dispatch() => imp.Handle; 
}