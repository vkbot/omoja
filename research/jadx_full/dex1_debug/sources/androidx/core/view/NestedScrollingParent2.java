package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface NestedScrollingParent2 extends NestedScrollingParent {
    void onNestedPreScroll(@NonNull View view, int i9, int i10, @NonNull int[] iArr, int i11);

    void onNestedScroll(@NonNull View view, int i9, int i10, int i11, int i12, int i13);

    void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i9, int i10);

    boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i9, int i10);

    void onStopNestedScroll(@NonNull View view, int i9);
}
