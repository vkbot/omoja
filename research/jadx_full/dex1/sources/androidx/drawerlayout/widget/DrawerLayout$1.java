package androidx.drawerlayout.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.core.view.accessibility.AccessibilityViewCommand$CommandArguments;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DrawerLayout$1 implements AccessibilityViewCommand {
    final /* synthetic */ DrawerLayout this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DrawerLayout$1(DrawerLayout drawerLayout) {
        this.this$0 = drawerLayout;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.view.accessibility.AccessibilityViewCommand
    public boolean perform(@NonNull View view, @Nullable AccessibilityViewCommand$CommandArguments accessibilityViewCommand$CommandArguments) {
        if (!this.this$0.isDrawerOpen(view) || this.this$0.getDrawerLockMode(view) == 2) {
            return false;
        }
        this.this$0.closeDrawer(view);
        return true;
    }
}
