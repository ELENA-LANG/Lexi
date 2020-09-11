public sealed class Win32Impl : interface<WindowImp>
{
    Win32Handle handle;
    
    Handle
        = handle;
    
    constructor()
    {
        handle := new Win32WindowHandle();
    }
}