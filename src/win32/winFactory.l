public singleton Win32SystemFactory : WindowSystemFactory
{
    WindowImp createWindowImpl()
        = new Win32Impl();
}