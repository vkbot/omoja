package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityManager$AccessibilityStateChangeListener;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper implements AccessibilityManager$AccessibilityStateChangeListener {
    AccessibilityManagerCompat$AccessibilityStateChangeListener mListener;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper(@NonNull AccessibilityManagerCompat$AccessibilityStateChangeListener accessibilityManagerCompat$AccessibilityStateChangeListener) {
        this.mListener = accessibilityManagerCompat$AccessibilityStateChangeListener;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper) {
            return this.mListener.equals(((AccessibilityManagerCompat$AccessibilityStateChangeListenerWrapper) obj).mListener);
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int hashCode() {
        return this.mListener.hashCode();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.accessibility.AccessibilityManager$AccessibilityStateChangeListener
    public void onAccessibilityStateChanged(boolean z8) {
        this.mListener.onAccessibilityStateChanged(z8);
    }
}
