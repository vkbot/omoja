package androidx.core.view;

import androidx.annotation.Nullable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface NestedScrollingChild {
    boolean dispatchNestedFling(float f8, float f9, boolean z8);

    boolean dispatchNestedPreFling(float f8, float f9);

    boolean dispatchNestedPreScroll(int i9, int i10, @Nullable int[] iArr, @Nullable int[] iArr2);

    boolean dispatchNestedScroll(int i9, int i10, int i11, int i12, @Nullable int[] iArr);

    boolean hasNestedScrollingParent();

    boolean isNestedScrollingEnabled();

    void setNestedScrollingEnabled(boolean z8);

    boolean startNestedScroll(int i9);

    void stopNestedScroll();
}
