package androidx.core.provider;

import android.graphics.Typeface;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FontsContractCompat$FontRequestCallback {
    public static final int FAIL_REASON_FONT_LOAD_ERROR = -3;
    public static final int FAIL_REASON_FONT_NOT_FOUND = 1;
    public static final int FAIL_REASON_FONT_UNAVAILABLE = 2;
    public static final int FAIL_REASON_MALFORMED_QUERY = 3;
    public static final int FAIL_REASON_PROVIDER_NOT_FOUND = -1;
    public static final int FAIL_REASON_SECURITY_VIOLATION = -4;
    public static final int FAIL_REASON_WRONG_CERTIFICATES = -2;

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    @Deprecated
    public static final int RESULT_OK = 0;
    static final int RESULT_SUCCESS = 0;

    public void onTypefaceRequestFailed(int i9) {
    }

    public void onTypefaceRetrieved(Typeface typeface) {
    }
}
