package androidx.constraintlayout.widget;

import android.util.SparseIntArray;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SharedValues {
    public static final int UNSET = -1;
    private SparseIntArray mValues = new SparseIntArray();
    private HashMap<Integer, HashSet<WeakReference<SharedValues$SharedValuesListener>>> mValuesListeners = new HashMap<>();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addListener(int i9, SharedValues$SharedValuesListener sharedValues$SharedValuesListener) {
        HashSet<WeakReference<SharedValues$SharedValuesListener>> hashSet = this.mValuesListeners.get(Integer.valueOf(i9));
        if (hashSet == null) {
            hashSet = new HashSet<>();
            this.mValuesListeners.put(Integer.valueOf(i9), hashSet);
        }
        hashSet.add(new WeakReference<>(sharedValues$SharedValuesListener));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clearListeners() {
        this.mValuesListeners.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void fireNewValue(int i9, int i10) {
        int i11 = this.mValues.get(i9, -1);
        if (i11 == i10) {
            return;
        }
        this.mValues.put(i9, i10);
        HashSet<WeakReference<SharedValues$SharedValuesListener>> hashSet = this.mValuesListeners.get(Integer.valueOf(i9));
        if (hashSet == null) {
            return;
        }
        Iterator<WeakReference<SharedValues$SharedValuesListener>> it = hashSet.iterator();
        boolean z8 = false;
        while (it.hasNext()) {
            SharedValues$SharedValuesListener sharedValues$SharedValuesListener = it.next().get();
            if (sharedValues$SharedValuesListener != null) {
                sharedValues$SharedValuesListener.onNewValue(i9, i10, i11);
            } else {
                z8 = true;
            }
        }
        if (z8) {
            ArrayList arrayList = new ArrayList();
            for (WeakReference<SharedValues$SharedValuesListener> weakReference : hashSet) {
                if (weakReference.get() == null) {
                    arrayList.add(weakReference);
                }
            }
            hashSet.removeAll(arrayList);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getValue(int i9) {
        return this.mValues.get(i9, -1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeListener(int i9, SharedValues$SharedValuesListener sharedValues$SharedValuesListener) {
        HashSet<WeakReference<SharedValues$SharedValuesListener>> hashSet = this.mValuesListeners.get(Integer.valueOf(i9));
        if (hashSet == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (WeakReference<SharedValues$SharedValuesListener> weakReference : hashSet) {
            SharedValues$SharedValuesListener sharedValues$SharedValuesListener2 = weakReference.get();
            if (sharedValues$SharedValuesListener2 == null || sharedValues$SharedValuesListener2 == sharedValues$SharedValuesListener) {
                arrayList.add(weakReference);
            }
        }
        hashSet.removeAll(arrayList);
    }

    public void removeListener(SharedValues$SharedValuesListener sharedValues$SharedValuesListener) {
        Iterator<Integer> it = this.mValuesListeners.keySet().iterator();
        while (it.hasNext()) {
            removeListener(it.next().intValue(), sharedValues$SharedValuesListener);
        }
    }
}
