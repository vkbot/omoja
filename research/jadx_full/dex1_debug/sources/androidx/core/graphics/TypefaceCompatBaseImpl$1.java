package androidx.core.graphics;

import androidx.core.provider.FontsContractCompat$FontInfo;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class TypefaceCompatBaseImpl$1 implements TypefaceCompatBaseImpl$StyleExtractor<FontsContractCompat$FontInfo> {
    final /* synthetic */ TypefaceCompatBaseImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TypefaceCompatBaseImpl$1(TypefaceCompatBaseImpl typefaceCompatBaseImpl) {
        this.this$0 = typefaceCompatBaseImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl$StyleExtractor
    public /* bridge */ /* synthetic */ int getWeight(FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        return getWeight2(fontsContractCompat$FontInfo);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // androidx.core.graphics.TypefaceCompatBaseImpl$StyleExtractor
    public /* bridge */ /* synthetic */ boolean isItalic(FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        return isItalic2(fontsContractCompat$FontInfo);
    }

    /* JADX INFO: renamed from: getWeight, reason: avoid collision after fix types in other method */
    public int getWeight2(FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        return fontsContractCompat$FontInfo.getWeight();
    }

    /* JADX INFO: renamed from: isItalic, reason: avoid collision after fix types in other method */
    public boolean isItalic2(FontsContractCompat$FontInfo fontsContractCompat$FontInfo) {
        return fontsContractCompat$FontInfo.isItalic();
    }
}
