package androidx.core.view;

import android.os.Build$VERSION;
import android.view.View;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ViewCompat$AccessibilityViewProperty<T> {
    private final int mContentChangeType;
    private final int mFrameworkMinimumSdk;
    private final int mTagKey;
    private final Class<T> mType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewCompat$AccessibilityViewProperty(int i9, Class<T> cls, int i10, int i11) {
        this.mTagKey = i9;
        this.mType = cls;
        this.mContentChangeType = i10;
        this.mFrameworkMinimumSdk = i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean frameworkAvailable() {
        return Build$VERSION.SDK_INT >= this.mFrameworkMinimumSdk;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean booleanNullToFalseEquals(Boolean bool, Boolean bool2) {
        return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
    }

    public abstract T frameworkGet(View view);

    public abstract void frameworkSet(View view, T t);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public T get(View view) {
        if (frameworkAvailable()) {
            return frameworkGet(view);
        }
        T t = (T) view.getTag(this.mTagKey);
        if (this.mType.isInstance(t)) {
            return t;
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void set(View view, T t) {
        if (frameworkAvailable()) {
            frameworkSet(view, t);
        } else if (shouldUpdate(get(view), t)) {
            ViewCompat.ensureAccessibilityDelegateCompat(view);
            view.setTag(this.mTagKey, t);
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(view, this.mContentChangeType);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean shouldUpdate(T t, T t3) {
        return !t3.equals(t);
    }

    public ViewCompat$AccessibilityViewProperty(int i9, Class<T> cls, int i10) {
        this(i9, cls, 0, i10);
    }
}
