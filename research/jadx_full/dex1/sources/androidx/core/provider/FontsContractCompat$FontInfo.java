package androidx.core.provider;

import android.net.Uri;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.core.util.Preconditions;
import androidx.media.utils.MediaConstants;
import kotlin.ULong;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontsContractCompat$FontInfo {
    private final boolean mItalic;
    private final int mResultCode;
    private final int mTtcIndex;
    private final Uri mUri;
    private final int mWeight;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public FontsContractCompat$FontInfo(@NonNull Uri uri, @IntRange(from = ULong.MIN_VALUE) int i9, @IntRange(from = MediaConstants.METADATA_VALUE_ATTRIBUTE_PRESENT, to = 1000) int i10, boolean z8, int i11) {
        this.mUri = (Uri) Preconditions.checkNotNull(uri);
        this.mTtcIndex = i9;
        this.mWeight = i10;
        this.mItalic = z8;
        this.mResultCode = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FontsContractCompat$FontInfo create(@NonNull Uri uri, @IntRange(from = ULong.MIN_VALUE) int i9, @IntRange(from = MediaConstants.METADATA_VALUE_ATTRIBUTE_PRESENT, to = 1000) int i10, boolean z8, int i11) {
        return new FontsContractCompat$FontInfo(uri, i9, i10, z8, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getResultCode() {
        return this.mResultCode;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = ULong.MIN_VALUE)
    public int getTtcIndex() {
        return this.mTtcIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @NonNull
    public Uri getUri() {
        return this.mUri;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @IntRange(from = MediaConstants.METADATA_VALUE_ATTRIBUTE_PRESENT, to = 1000)
    public int getWeight() {
        return this.mWeight;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isItalic() {
        return this.mItalic;
    }
}
