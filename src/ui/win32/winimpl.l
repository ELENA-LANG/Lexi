public sealed class Win32Impl : Object, interface<WindowImp>
{
    Win32WindowHandle handle;
    
    set Func OnRedraw(Func f)
    {
        handle.OnPaint := f
    }
    
    Handle
        = handle;
    
    constructor()
    {
        handle := new Win32WindowHandle();
    }
    
    deviceDrawChar(char ch)
    {
        handle.writeChar(ch)
    }
}