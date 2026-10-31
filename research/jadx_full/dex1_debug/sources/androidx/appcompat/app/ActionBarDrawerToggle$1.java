package androidx.appcompat.app;

import android.view.View;
import android.view.View$OnClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionBarDrawerToggle$1 implements View$OnClickListener {
    final /* synthetic */ ActionBarDrawerToggle this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionBarDrawerToggle$1(ActionBarDrawerToggle actionBarDrawerToggle) {
        this.this$0 = actionBarDrawerToggle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnClickListener
    public void onClick(View view) {
        ActionBarDrawerToggle actionBarDrawerToggle = this.this$0;
        if (actionBarDrawerToggle.mDrawerIndicatorEnabled) {
            actionBarDrawerToggle.toggle();
            return;
        }
        View$OnClickListener view$OnClickListener = actionBarDrawerToggle.mToolbarNavigationClickListener;
        if (view$OnClickListener != null) {
            view$OnClickListener.onClick(view);
        }
    }
}
