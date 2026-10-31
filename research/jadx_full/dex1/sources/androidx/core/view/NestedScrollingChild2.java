package androidx.core.view;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface NestedScrollingChild2 extends NestedScrollingChild {
    boolean dispatchNestedPreScroll(int i9, int i10, @Nullable int[] iArr, @Nullable int[] iArr2, int i11);

    boolean dispatchNestedScroll(int i9, int i10, int i11, int i12, @Nullable int[] iArr, int i13);

    boolean hasNestedScrollingParent(int i9);

    boolean startNestedScroll(int i9, int i10);

    void stopNestedScroll(int i9);
}
