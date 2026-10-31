package androidx.core.view;

import android.os.Build$VERSION;
import android.view.View;
import android.view.View$OnAttachStateChangeListener;
import android.view.ViewTreeObserver$OnGlobalLayoutListener;
import java.util.Iterator;
import java.util.Map$Entry;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewCompat$AccessibilityPaneVisibilityManager implements ViewTreeObserver$OnGlobalLayoutListener, View$OnAttachStateChangeListener {
    private final WeakHashMap<View, Boolean> mPanesToVisible = new WeakHashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkPaneVisibility(Map$Entry<View, Boolean> map$Entry) {
        View key = map$Entry.getKey();
        boolean zBooleanValue = map$Entry.getValue().booleanValue();
        boolean z8 = key.isShown() && key.getWindowVisibility() == 0;
        if (zBooleanValue != z8) {
            ViewCompat.notifyViewAccessibilityStateChangedIfNeeded(key, z8 ? 16 : 32);
            map$Entry.setValue(Boolean.valueOf(z8));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void registerForLayoutCallback(View view) {
        view.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void unregisterForLayoutCallback(View view) {
        view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addAccessibilityPane(View view) {
        this.mPanesToVisible.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
        view.addOnAttachStateChangeListener(this);
        if (view.isAttachedToWindow()) {
            registerForLayoutCallback(view);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.ViewTreeObserver$OnGlobalLayoutListener
    public void onGlobalLayout() {
        if (Build$VERSION.SDK_INT < 28) {
            Iterator<Map$Entry<View, Boolean>> it = this.mPanesToVisible.entrySet().iterator();
            while (it.hasNext()) {
                checkPaneVisibility(it.next());
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        registerForLayoutCallback(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeAccessibilityPane(View view) {
        this.mPanesToVisible.remove(view);
        view.removeOnAttachStateChangeListener(this);
        unregisterForLayoutCallback(view);
    }

    @Override // android.view.View$OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
