package androidx.core.view;

import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.R$id;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewCompat$UnhandledKeyEventManager {
    private static final ArrayList<WeakReference<View>> sViewsWithListeners = new ArrayList<>();

    @Nullable
    private WeakHashMap<View, Boolean> mViewsContainingListeners = null;
    private SparseArray<WeakReference<View>> mCapturedKeys = null;
    private WeakReference<KeyEvent> mLastDispatchedPreViewKeyEvent = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ViewCompat$UnhandledKeyEventManager at(View view) {
        ViewCompat$UnhandledKeyEventManager viewCompat$UnhandledKeyEventManager = (ViewCompat$UnhandledKeyEventManager) view.getTag(R$id.tag_unhandled_key_event_manager);
        if (viewCompat$UnhandledKeyEventManager != null) {
            return viewCompat$UnhandledKeyEventManager;
        }
        ViewCompat$UnhandledKeyEventManager viewCompat$UnhandledKeyEventManager2 = new ViewCompat$UnhandledKeyEventManager();
        view.setTag(R$id.tag_unhandled_key_event_manager, viewCompat$UnhandledKeyEventManager2);
        return viewCompat$UnhandledKeyEventManager2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Nullable
    private View dispatchInOrder(View view, KeyEvent keyEvent) {
        WeakHashMap<View, Boolean> weakHashMap = this.mViewsContainingListeners;
        if (weakHashMap != null && weakHashMap.containsKey(view)) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                    View viewDispatchInOrder = dispatchInOrder(viewGroup.getChildAt(childCount), keyEvent);
                    if (viewDispatchInOrder != null) {
                        return viewDispatchInOrder;
                    }
                }
            }
            if (onUnhandledKeyEvent(view, keyEvent)) {
                return view;
            }
        }
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private SparseArray<WeakReference<View>> getCapturedKeys() {
        if (this.mCapturedKeys == null) {
            this.mCapturedKeys = new SparseArray<>();
        }
        return this.mCapturedKeys;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private boolean onUnhandledKeyEvent(@NonNull View view, @NonNull KeyEvent keyEvent) {
        ArrayList arrayList = (ArrayList) view.getTag(R$id.tag_unhandled_key_listeners);
        if (arrayList == null) {
            return false;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((ViewCompat$OnUnhandledKeyEventListenerCompat) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void recalcViewsWithUnhandled() {
        WeakHashMap<View, Boolean> weakHashMap = this.mViewsContainingListeners;
        if (weakHashMap != null) {
            weakHashMap.clear();
        }
        ArrayList<WeakReference<View>> arrayList = sViewsWithListeners;
        if (arrayList.isEmpty()) {
            return;
        }
        synchronized (arrayList) {
            try {
                if (this.mViewsContainingListeners == null) {
                    this.mViewsContainingListeners = new WeakHashMap<>();
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ArrayList<WeakReference<View>> arrayList2 = sViewsWithListeners;
                    View view = arrayList2.get(size).get();
                    if (view == null) {
                        arrayList2.remove(size);
                    } else {
                        this.mViewsContainingListeners.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.mViewsContainingListeners.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void registerListeningView(View view) {
        ArrayList<WeakReference<View>> arrayList = sViewsWithListeners;
        synchronized (arrayList) {
            try {
                int size = arrayList.size();
                int i9 = 0;
                while (i9 < size) {
                    WeakReference<View> weakReference = arrayList.get(i9);
                    i9++;
                    if (weakReference.get() == view) {
                        return;
                    }
                }
                sViewsWithListeners.add(new WeakReference<>(view));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void unregisterListeningView(View view) {
        synchronized (sViewsWithListeners) {
            int i9 = 0;
            while (true) {
                try {
                    ArrayList<WeakReference<View>> arrayList = sViewsWithListeners;
                    if (i9 >= arrayList.size()) {
                        return;
                    }
                    if (arrayList.get(i9).get() == view) {
                        arrayList.remove(i9);
                        return;
                    }
                    i9++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean dispatch(View view, KeyEvent keyEvent) {
        if (keyEvent.getAction() == 0) {
            recalcViewsWithUnhandled();
        }
        View viewDispatchInOrder = dispatchInOrder(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewDispatchInOrder != null && !KeyEvent.isModifierKey(keyCode)) {
                getCapturedKeys().put(keyCode, new WeakReference<>(viewDispatchInOrder));
            }
        }
        return viewDispatchInOrder != null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean preDispatch(KeyEvent keyEvent) {
        WeakReference<View> weakReferenceValueAt;
        int iIndexOfKey;
        WeakReference<KeyEvent> weakReference = this.mLastDispatchedPreViewKeyEvent;
        if (weakReference != null && weakReference.get() == keyEvent) {
            return false;
        }
        this.mLastDispatchedPreViewKeyEvent = new WeakReference<>(keyEvent);
        SparseArray<WeakReference<View>> capturedKeys = getCapturedKeys();
        if (keyEvent.getAction() != 1 || (iIndexOfKey = capturedKeys.indexOfKey(keyEvent.getKeyCode())) < 0) {
            weakReferenceValueAt = null;
        } else {
            weakReferenceValueAt = capturedKeys.valueAt(iIndexOfKey);
            capturedKeys.removeAt(iIndexOfKey);
        }
        if (weakReferenceValueAt == null) {
            weakReferenceValueAt = capturedKeys.get(keyEvent.getKeyCode());
        }
        if (weakReferenceValueAt == null) {
            return false;
        }
        View view = weakReferenceValueAt.get();
        if (view != null && view.isAttachedToWindow()) {
            onUnhandledKeyEvent(view, keyEvent);
        }
        return true;
    }
}
