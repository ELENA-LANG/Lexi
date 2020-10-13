public interface WindowImp
{
    [info:"OnRedraw property"]
    set abstract Func OnRedraw(Func f);
    
    [info:"Returns the real window handle"]
    get abstract Handle();
    
    [info:"Draws a character"]
    abstract deviceDrawChar(char ch, int x, int y);
}