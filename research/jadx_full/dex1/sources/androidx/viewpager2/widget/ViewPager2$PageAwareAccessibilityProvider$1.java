package androidx.viewpager2.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.view.accessibility.AccessibilityViewCommand$CommandArguments;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ViewPager2$PageAwareAccessibilityProvider$1 implements AccessibilityViewCommand {
    final /* synthetic */ ViewPager2$PageAwareAccessibilityProvider this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ViewPager2$PageAwareAccessibilityProvider$1(ViewPager2$PageAwareAccessibilityProvider viewPager2$PageAwareAccessibilityProvider) {
        this.this$1 = viewPager2$PageAwareAccessibilityProvider;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand$CommandArguments accessibilityViewCommand$CommandArguments) {
        this.this$1.setCurrentItemFromAccessibilityCommand(((ViewPager2) view).getCurrentItem() + 1);
        return true;
    }
}
