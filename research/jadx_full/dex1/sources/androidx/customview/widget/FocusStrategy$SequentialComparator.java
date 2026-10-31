package androidx.customview.widget;

import android.graphics.Rect;
import java.util.Comparator;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FocusStrategy$SequentialComparator<T> implements Comparator<T> {
    private final FocusStrategy$BoundsAdapter<T> mAdapter;
    private final boolean mIsLayoutRtl;
    private final Rect mTemp1 = new Rect();
    private final Rect mTemp2 = new Rect();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FocusStrategy$SequentialComparator(boolean z8, FocusStrategy$BoundsAdapter<T> focusStrategy$BoundsAdapter) {
        this.mIsLayoutRtl = z8;
        this.mAdapter = focusStrategy$BoundsAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.util.Comparator
    public int compare(T t, T t3) {
        Rect rect = this.mTemp1;
        Rect rect2 = this.mTemp2;
        this.mAdapter.obtainBounds(t, rect);
        this.mAdapter.obtainBounds(t3, rect2);
        int i9 = rect.top;
        int i10 = rect2.top;
        if (i9 < i10) {
            return -1;
        }
        if (i9 > i10) {
            return 1;
        }
        int i11 = rect.left;
        int i12 = rect2.left;
        if (i11 < i12) {
            return this.mIsLayoutRtl ? 1 : -1;
        }
        if (i11 > i12) {
            return this.mIsLayoutRtl ? -1 : 1;
        }
        int i13 = rect.bottom;
        int i14 = rect2.bottom;
        if (i13 < i14) {
            return -1;
        }
        if (i13 > i14) {
            return 1;
        }
        int i15 = rect.right;
        int i16 = rect2.right;
        if (i15 < i16) {
            return this.mIsLayoutRtl ? 1 : -1;
        }
        if (i15 > i16) {
            return this.mIsLayoutRtl ? -1 : 1;
        }
        return 0;
    }
}
