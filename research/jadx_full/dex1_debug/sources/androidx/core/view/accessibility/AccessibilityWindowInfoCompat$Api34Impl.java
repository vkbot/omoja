package androidx.core.view.accessibility;

import android.os.LocaleList;
import android.view.accessibility.AccessibilityWindowInfo;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(34)
public class AccessibilityWindowInfoCompat$Api34Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AccessibilityWindowInfoCompat$Api34Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static LocaleList getLocales(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.getLocales();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static long getTransitionTimeMillis(AccessibilityWindowInfo accessibilityWindowInfo) {
        return accessibilityWindowInfo.getTransitionTimeMillis();
    }
}
