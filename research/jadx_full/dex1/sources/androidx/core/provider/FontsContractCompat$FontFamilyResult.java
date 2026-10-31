package androidx.core.provider;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontsContractCompat$FontFamilyResult {
    public static final int STATUS_OK = 0;
    public static final int STATUS_UNEXPECTED_DATA_PROVIDED = 2;
    public static final int STATUS_WRONG_CERTIFICATES = 1;
    private final FontsContractCompat$FontInfo[] mFonts;
    private final int mStatusCode;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public FontsContractCompat$FontFamilyResult(int i9, @Nullable FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr) {
        this.mStatusCode = i9;
        this.mFonts = fontsContractCompat$FontInfoArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FontsContractCompat$FontFamilyResult create(int i9, @Nullable FontsContractCompat$FontInfo[] fontsContractCompat$FontInfoArr) {
        return new FontsContractCompat$FontFamilyResult(i9, fontsContractCompat$FontInfoArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FontsContractCompat$FontInfo[] getFonts() {
        return this.mFonts;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getStatusCode() {
        return this.mStatusCode;
    }
}
