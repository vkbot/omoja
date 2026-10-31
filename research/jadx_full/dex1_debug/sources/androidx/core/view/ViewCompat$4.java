package androidx.core.view;

import android.view.View;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewCompat$4 extends ViewCompat$AccessibilityViewProperty<Boolean> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewCompat$4(int i9, Class cls, int i10) {
        super(i9, cls, i10);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.core.view.ViewCompat$AccessibilityViewProperty
    @RequiresApi(28)
    public Boolean frameworkGet(View view) {
        return Boolean.valueOf(ViewCompat$Api28Impl.isAccessibilityHeading(view));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RequiresApi(28)
    /* JADX INFO: renamed from: frameworkSet, reason: avoid collision after fix types in other method */
    public void frameworkSet2(View view, Boolean bool) {
        ViewCompat$Api28Impl.setAccessibilityHeading(view, bool.booleanValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // androidx.core.view.ViewCompat$AccessibilityViewProperty
    public /* bridge */ /* synthetic */ boolean shouldUpdate(Boolean bool, Boolean bool2) {
        return shouldUpdate2(bool, bool2);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.view.View, java.lang.Object] */
    @Override // androidx.core.view.ViewCompat$AccessibilityViewProperty
    @RequiresApi(28)
    public /* bridge */ /* synthetic */ void frameworkSet(View view, Boolean bool) {
        frameworkSet2(view, bool);
    }

    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.core.view.ViewCompat$AccessibilityViewProperty
    @RequiresApi(28)
    public /* bridge */ /* synthetic */ Boolean frameworkGet(View view) {
        return frameworkGet(view);
    }

    /* JADX INFO: renamed from: shouldUpdate, reason: avoid collision after fix types in other method */
    public boolean shouldUpdate2(Boolean bool, Boolean bool2) {
        return !booleanNullToFalseEquals(bool, bool2);
    }
}
