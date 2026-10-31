package androidx.core.view;

import android.text.TextUtils;
import android.view.View;
import androidx.annotation.RequiresApi;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewCompat$2 extends ViewCompat$AccessibilityViewProperty<CharSequence> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewCompat$2(int i9, Class cls, int i10, int i11) {
        super(i9, cls, i10, i11);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.core.view.ViewCompat$AccessibilityViewProperty
    @RequiresApi(28)
    public /* bridge */ /* synthetic */ CharSequence frameworkGet(View view) {
        return frameworkGet(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [android.view.View, java.lang.Object] */
    @Override // androidx.core.view.ViewCompat$AccessibilityViewProperty
    @RequiresApi(28)
    public /* bridge */ /* synthetic */ void frameworkSet(View view, CharSequence charSequence) {
        frameworkSet2(view, charSequence);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
    @Override // androidx.core.view.ViewCompat$AccessibilityViewProperty
    public /* bridge */ /* synthetic */ boolean shouldUpdate(CharSequence charSequence, CharSequence charSequence2) {
        return shouldUpdate2(charSequence, charSequence2);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.core.view.ViewCompat$AccessibilityViewProperty
    @RequiresApi(28)
    public CharSequence frameworkGet(View view) {
        return ViewCompat$Api28Impl.getAccessibilityPaneTitle(view);
    }

    @RequiresApi(28)
    /* JADX INFO: renamed from: frameworkSet, reason: avoid collision after fix types in other method */
    public void frameworkSet2(View view, CharSequence charSequence) {
        ViewCompat$Api28Impl.setAccessibilityPaneTitle(view, charSequence);
    }

    /* JADX INFO: renamed from: shouldUpdate, reason: avoid collision after fix types in other method */
    public boolean shouldUpdate2(CharSequence charSequence, CharSequence charSequence2) {
        return !TextUtils.equals(charSequence, charSequence2);
    }
}
