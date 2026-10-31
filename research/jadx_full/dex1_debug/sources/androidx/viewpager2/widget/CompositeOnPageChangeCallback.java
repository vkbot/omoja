package androidx.viewpager2.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Px;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
final class CompositeOnPageChangeCallback extends ViewPager2$OnPageChangeCallback {

    @NonNull
    private final List<ViewPager2$OnPageChangeCallback> mCallbacks;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CompositeOnPageChangeCallback(int i9) {
        this.mCallbacks = new ArrayList(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void throwCallbackListModifiedWhileInUse(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOnPageChangeCallback(ViewPager2$OnPageChangeCallback viewPager2$OnPageChangeCallback) {
        this.mCallbacks.add(viewPager2$OnPageChangeCallback);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageScrollStateChanged(int i9) {
        try {
            Iterator<ViewPager2$OnPageChangeCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onPageScrollStateChanged(i9);
            }
        } catch (ConcurrentModificationException e) {
            throwCallbackListModifiedWhileInUse(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageScrolled(int i9, float f8, @Px int i10) {
        try {
            Iterator<ViewPager2$OnPageChangeCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onPageScrolled(i9, f8, i10);
            }
        } catch (ConcurrentModificationException e) {
            throwCallbackListModifiedWhileInUse(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.widget.ViewPager2$OnPageChangeCallback
    public void onPageSelected(int i9) {
        try {
            Iterator<ViewPager2$OnPageChangeCallback> it = this.mCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onPageSelected(i9);
            }
        } catch (ConcurrentModificationException e) {
            throwCallbackListModifiedWhileInUse(e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void removeOnPageChangeCallback(ViewPager2$OnPageChangeCallback viewPager2$OnPageChangeCallback) {
        this.mCallbacks.remove(viewPager2$OnPageChangeCallback);
    }
}
