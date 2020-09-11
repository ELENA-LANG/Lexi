import system'winforms;

public class Win32Handle
{
    WindowHandle handle;
    
    WindowHandle cast() = handle;
}

class Win32WindowListener : SDIWindowCallback
{
    
}

public sealed class Win32WindowHandle : Win32Handle
{
    open()
    {
        self.create()
    }
    
    create()
    {
        handle := new WindowHandle(
                            EX_SDI_OVERLAPPEDWINDOW,
                            SDIWindowClass, 
                            "Lexi"w, 
                            WS_OVERLAPPEDWINDOW || WS_VISIBLE,
                            0, 0, 50, 50,
                            WindowHandle.Default, 
                            CurrentInstance,
                            new Win32WindowListener(/*self*/))        
    }
}