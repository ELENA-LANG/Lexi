public sealed class Win32Impl : Win32WindowHandle, interface<WindowImp>
{
    constructor()
    {
        self.create();
    }
}