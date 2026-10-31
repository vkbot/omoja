package androidx.appcompat.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.annotation.StringRes;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ActionBarDrawerToggle$ToolbarCompatDelegate implements ActionBarDrawerToggle$Delegate {
    final CharSequence mDefaultContentDescription;
    final Drawable mDefaultUpIndicator;
    final Toolbar mToolbar;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ActionBarDrawerToggle$ToolbarCompatDelegate(Toolbar toolbar) {
        this.mToolbar = toolbar;
        this.mDefaultUpIndicator = toolbar.getNavigationIcon();
        this.mDefaultContentDescription = toolbar.getNavigationContentDescription();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public Context getActionBarThemedContext() {
        return this.mToolbar.getContext();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public Drawable getThemeUpIndicator() {
        return this.mDefaultUpIndicator;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public boolean isNavigationVisible() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public void setActionBarDescription(@StringRes int i9) {
        Toolbar toolbar = this.mToolbar;
        if (i9 == 0) {
            toolbar.setNavigationContentDescription(this.mDefaultContentDescription);
        } else {
            toolbar.setNavigationContentDescription(i9);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.appcompat.app.ActionBarDrawerToggle$Delegate
    public void setActionBarUpIndicator(Drawable drawable, @StringRes int i9) {
        this.mToolbar.setNavigationIcon(drawable);
        setActionBarDescription(i9);
    }
}
