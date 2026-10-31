package androidx.appcompat.app;

import android.R$attr;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionBarDrawerToggle$FrameworkActionBarDelegate implements ActionBarDrawerToggle$Delegate {
    private final Activity mActivity;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionBarDrawerToggle$FrameworkActionBarDelegate(Activity activity) {
        this.mActivity = activity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public Context getActionBarThemedContext() {
        android.app.ActionBar actionBar = this.mActivity.getActionBar();
        return actionBar != null ? actionBar.getThemedContext() : this.mActivity;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public Drawable getThemeUpIndicator() {
        TypedArray typedArrayObtainStyledAttributes = getActionBarThemedContext().obtainStyledAttributes(null, new int[]{R$attr.homeAsUpIndicator}, R$attr.actionBarStyle, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(0);
        typedArrayObtainStyledAttributes.recycle();
        return drawable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public boolean isNavigationVisible() {
        android.app.ActionBar actionBar = this.mActivity.getActionBar();
        return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public void setActionBarDescription(int i9) {
        android.app.ActionBar actionBar = this.mActivity.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeActionContentDescription(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public void setActionBarUpIndicator(Drawable drawable, int i9) {
        android.app.ActionBar actionBar = this.mActivity.getActionBar();
        if (actionBar != null) {
            actionBar.setHomeAsUpIndicator(drawable);
            actionBar.setHomeActionContentDescription(i9);
        }
    }
}
