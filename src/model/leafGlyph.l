public abstract class LeafGlyph : Glyph
{
    insert(Glyph g)
    {
        InvalidOperationException.raise()
    }
}