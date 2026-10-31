package androidx.core.view;

import android.view.View;
import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface NestedScrollingParent {
    int getNestedScrollAxes();

    boolean onNestedFling(@NonNull View view, float f8, float f10, boolean z9);

    boolean onNestedPreFling(@NonNull View view, float f8, float f10);

    void onNestedPreScroll(@NonNull View view, int i10, int i11, @NonNull int[] iArr);

    void onNestedScroll(@NonNull View view, int i10, int i11, int i12, int i13);

    void onNestedScrollAccepted(@NonNull View view, @NonNull View view2, int i10);

    boolean onStartNestedScroll(@NonNull View view, @NonNull View view2, int i10);

    void onStopNestedScroll(@NonNull View view);
}
