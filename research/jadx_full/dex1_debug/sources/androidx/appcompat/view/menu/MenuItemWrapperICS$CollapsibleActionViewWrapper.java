package androidx.appcompat.view.menu;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.CollapsibleActionView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MenuItemWrapperICS$CollapsibleActionViewWrapper extends FrameLayout implements CollapsibleActionView {
    final android.view.CollapsibleActionView mWrappedView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: android.view.View */
    /* JADX WARN: Multi-variable type inference failed */
    public MenuItemWrapperICS$CollapsibleActionViewWrapper(View view) {
        super(view.getContext());
        this.mWrappedView = (android.view.CollapsibleActionView) view;
        addView(view);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public View getWrappedView() {
        return (View) this.mWrappedView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewCollapsed() {
        this.mWrappedView.onActionViewCollapsed();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.view.CollapsibleActionView
    public void onActionViewExpanded() {
        this.mWrappedView.onActionViewExpanded();
    }
}
