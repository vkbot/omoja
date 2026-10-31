package androidx.core.content.res;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FontResourcesParserCompat$FontFileResourceEntry {

    @NonNull
    private final String mFileName;
    private final boolean mItalic;
    private final int mResourceId;
    private final int mTtcIndex;
    private final String mVariationSettings;
    private final int mWeight;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FontResourcesParserCompat$FontFileResourceEntry(@NonNull String str, int i9, boolean z8, @Nullable String str2, int i10, int i11) {
        this.mFileName = str;
        this.mWeight = i9;
        this.mItalic = z8;
        this.mVariationSettings = str2;
        this.mTtcIndex = i10;
        this.mResourceId = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public String getFileName() {
        return this.mFileName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getResourceId() {
        return this.mResourceId;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTtcIndex() {
        return this.mTtcIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    public String getVariationSettings() {
        return this.mVariationSettings;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getWeight() {
        return this.mWeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isItalic() {
        return this.mItalic;
    }
}
