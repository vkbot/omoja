package androidx.core.view;

import android.view.View;
import android.view.ViewParent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RequiresApi(21)
public class ViewParentCompat$Api21Impl {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ViewParentCompat$Api21Impl() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean onNestedFling(ViewParent viewParent, View view, float f8, float f9, boolean z8) {
        return viewParent.onNestedFling(view, f8, f9, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean onNestedPreFling(ViewParent viewParent, View view, float f8, float f9) {
        return viewParent.onNestedPreFling(view, f8, f9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void onNestedPreScroll(ViewParent viewParent, View view, int i9, int i10, int[] iArr) {
        viewParent.onNestedPreScroll(view, i9, i10, iArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void onNestedScroll(ViewParent viewParent, View view, int i9, int i10, int i11, int i12) {
        viewParent.onNestedScroll(view, i9, i10, i11, i12);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void onNestedScrollAccepted(ViewParent viewParent, View view, View view2, int i9) {
        viewParent.onNestedScrollAccepted(view, view2, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static boolean onStartNestedScroll(ViewParent viewParent, View view, View view2, int i9) {
        return viewParent.onStartNestedScroll(view, view2, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @DoNotInline
    public static void onStopNestedScroll(ViewParent viewParent, View view) {
        viewParent.onStopNestedScroll(view);
    }
}
