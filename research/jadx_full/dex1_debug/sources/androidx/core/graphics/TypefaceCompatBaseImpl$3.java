package androidx.core.graphics;

import androidx.core.content.res.FontResourcesParserCompat$FontFileResourceEntry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TypefaceCompatBaseImpl$3 implements TypefaceCompatBaseImpl$StyleExtractor<FontResourcesParserCompat$FontFileResourceEntry> {
    final /* synthetic */ TypefaceCompatBaseImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypefaceCompatBaseImpl$3(TypefaceCompatBaseImpl typefaceCompatBaseImpl) {
        this.this$0 = typefaceCompatBaseImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl$StyleExtractor
    public /* bridge */ /* synthetic */ int getWeight(FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntry) {
        return getWeight2(fontResourcesParserCompat$FontFileResourceEntry);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl$StyleExtractor
    public /* bridge */ /* synthetic */ boolean isItalic(FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntry) {
        return isItalic2(fontResourcesParserCompat$FontFileResourceEntry);
    }

    /* JADX INFO: renamed from: getWeight, reason: avoid collision after fix types in other method */
    public int getWeight2(FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntry) {
        return fontResourcesParserCompat$FontFileResourceEntry.getWeight();
    }

    /* JADX INFO: renamed from: isItalic, reason: avoid collision after fix types in other method */
    public boolean isItalic2(FontResourcesParserCompat$FontFileResourceEntry fontResourcesParserCompat$FontFileResourceEntry) {
        return fontResourcesParserCompat$FontFileResourceEntry.isItalic();
    }
}
