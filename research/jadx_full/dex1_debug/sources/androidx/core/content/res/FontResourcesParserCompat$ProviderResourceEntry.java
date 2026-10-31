package androidx.core.content.res;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.provider.FontRequest;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class FontResourcesParserCompat$ProviderResourceEntry implements FontResourcesParserCompat$FamilyResourceEntry {

    @NonNull
    private final FontRequest mRequest;
    private final int mStrategy;

    @Nullable
    private final String mSystemFontFamilyName;
    private final int mTimeoutMs;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public FontResourcesParserCompat$ProviderResourceEntry(@NonNull FontRequest fontRequest, int i9, int i10, @Nullable String str) {
        this.mRequest = fontRequest;
        this.mStrategy = i9;
        this.mTimeoutMs = i10;
        this.mSystemFontFamilyName = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getFetchStrategy() {
        return this.mStrategy;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public FontRequest getRequest() {
        return this.mRequest;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    @RestrictTo({RestrictTo$Scope.LIBRARY})
    public String getSystemFontFamilyName() {
        return this.mSystemFontFamilyName;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getTimeout() {
        return this.mTimeoutMs;
    }

    public FontResourcesParserCompat$ProviderResourceEntry(@NonNull FontRequest fontRequest, int i9, int i10) {
        this(fontRequest, i9, i10, null);
    }
}
