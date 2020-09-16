import system'winforms;

public class Win32Handle
{
    WindowHandle handle;
    
    WindowHandle cast() = handle;
}

class Win32WindowListener : SDIWindowCallback
{
    Win32WindowHandle owner;
    
    constructor(Win32WindowHandle owner)
    {
        this owner := owner
    }
    
    wm_paint(WindowHandle hwnd, IntNumber message, ref IntNumber retVal)
    {
        owner.repaint()
    }
}

public sealed class Win32WindowHandle : Win32Handle
{
    event Func OnPaint;
    
    open()
    {
        self.create()
    }
    
    repaint()
    {
        OnPaint.?()
    }
    
    create()
    {
        handle := new WindowHandle(
                            EX_SDI_OVERLAPPEDWINDOW,
                            SDIWindowClass, 
                            "Lexi"w, 
                            WS_OVERLAPPEDWINDOW || WS_VISIBLE,
                            20, 20, 300, 200,
                            WindowHandle.Default, 
                            CurrentInstance,
                            new Win32WindowListener(self))        
    }
}