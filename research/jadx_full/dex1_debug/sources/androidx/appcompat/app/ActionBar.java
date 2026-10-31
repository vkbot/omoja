package androidx.appcompat.app;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SpinnerAdapter;
import androidx.annotation.DrawableRes;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.annotation.StringRes;
import androidx.appcompat.view.ActionMode;
import androidx.appcompat.view.ActionMode$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class ActionBar {
    public static final int DISPLAY_HOME_AS_UP = 4;
    public static final int DISPLAY_SHOW_CUSTOM = 16;
    public static final int DISPLAY_SHOW_HOME = 2;
    public static final int DISPLAY_SHOW_TITLE = 8;
    public static final int DISPLAY_USE_LOGO = 1;

    @Deprecated
    public static final int NAVIGATION_MODE_LIST = 1;

    @Deprecated
    public static final int NAVIGATION_MODE_STANDARD = 0;

    @Deprecated
    public static final int NAVIGATION_MODE_TABS = 2;

    public abstract void addOnMenuVisibilityListener(ActionBar$OnMenuVisibilityListener actionBar$OnMenuVisibilityListener);

    @Deprecated
    public abstract void addTab(ActionBar$Tab actionBar$Tab);

    @Deprecated
    public abstract void addTab(ActionBar$Tab actionBar$Tab, int i9);

    @Deprecated
    public abstract void addTab(ActionBar$Tab actionBar$Tab, int i9, boolean z8);

    @Deprecated
    public abstract void addTab(ActionBar$Tab actionBar$Tab, boolean z8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean closeOptionsMenu() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean collapseActionView() {
        return false;
    }

    public abstract View getCustomView();

    public abstract int getDisplayOptions();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getElevation() {
        return 0.0f;
    }

    public abstract int getHeight();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getHideOffset() {
        return 0;
    }

    @Deprecated
    public abstract int getNavigationItemCount();

    @Deprecated
    public abstract int getNavigationMode();

    @Deprecated
    public abstract int getSelectedNavigationIndex();

    @Nullable
    @Deprecated
    public abstract ActionBar$Tab getSelectedTab();

    @Nullable
    public abstract CharSequence getSubtitle();

    @Deprecated
    public abstract ActionBar$Tab getTabAt(int i9);

    @Deprecated
    public abstract int getTabCount();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Context getThemedContext() {
        return null;
    }

    @Nullable
    public abstract CharSequence getTitle();

    public abstract void hide();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean invalidateOptionsMenu() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isHideOnContentScrollEnabled() {
        return false;
    }

    public abstract boolean isShowing();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean isTitleTruncated() {
        return false;
    }

    @Deprecated
    public abstract ActionBar$Tab newTab();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean onKeyShortcut(int i9, KeyEvent keyEvent) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean onMenuKeyEvent(KeyEvent keyEvent) {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean openOptionsMenu() {
        return false;
    }

    @Deprecated
    public abstract void removeAllTabs();

    public abstract void removeOnMenuVisibilityListener(ActionBar$OnMenuVisibilityListener actionBar$OnMenuVisibilityListener);

    @Deprecated
    public abstract void removeTab(ActionBar$Tab actionBar$Tab);

    @Deprecated
    public abstract void removeTabAt(int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public boolean requestFocus() {
        return false;
    }

    @Deprecated
    public abstract void selectTab(ActionBar$Tab actionBar$Tab);

    public abstract void setBackgroundDrawable(@Nullable Drawable drawable);

    public abstract void setCustomView(int i9);

    public abstract void setCustomView(View view);

    public abstract void setCustomView(View view, ActionBar$LayoutParams actionBar$LayoutParams);

    public abstract void setDisplayHomeAsUpEnabled(boolean z8);

    public abstract void setDisplayOptions(int i9);

    public abstract void setDisplayOptions(int i9, int i10);

    public abstract void setDisplayShowCustomEnabled(boolean z8);

    public abstract void setDisplayShowHomeEnabled(boolean z8);

    public abstract void setDisplayShowTitleEnabled(boolean z8);

    public abstract void setDisplayUseLogoEnabled(boolean z8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setElevation(float f8) {
        if (f8 == 0.0f) {
            return;
        }
        androidx.navigation.b.g("Setting a non-zero elevation is not supported in this action bar configuration.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHideOffset(int i9) {
        if (i9 == 0) {
            return;
        }
        androidx.navigation.b.g("Setting an explicit action bar hide offset is not supported in this action bar configuration.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setHideOnContentScrollEnabled(boolean z8) {
        if (z8) {
            androidx.navigation.b.g("Hide on content scroll is not supported in this action bar configuration.");
        }
    }

    public abstract void setIcon(@DrawableRes int i9);

    public abstract void setIcon(Drawable drawable);

    @Deprecated
    public abstract void setListNavigationCallbacks(SpinnerAdapter spinnerAdapter, ActionBar$OnNavigationListener actionBar$OnNavigationListener);

    public abstract void setLogo(@DrawableRes int i9);

    public abstract void setLogo(Drawable drawable);

    @Deprecated
    public abstract void setNavigationMode(int i9);

    @Deprecated
    public abstract void setSelectedNavigationItem(int i9);

    public abstract void setSubtitle(int i9);

    public abstract void setSubtitle(CharSequence charSequence);

    public abstract void setTitle(@StringRes int i9);

    public abstract void setTitle(CharSequence charSequence);

    public abstract void show();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public ActionMode startActionMode(ActionMode$Callback actionMode$Callback) {
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    public void setHomeActionContentDescription(@Nullable CharSequence charSequence) {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 2 */
    public void setHomeAsUpIndicator(@Nullable Drawable drawable) {
    }

    public void onDestroy() {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void dispatchMenuVisibilityChanged(boolean z8) {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void onConfigurationChanged(Configuration configuration) {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setDefaultDisplayHomeAsUpEnabled(boolean z8) {
    }

    public void setHomeActionContentDescription(@StringRes int i9) {
    }

    public void setHomeAsUpIndicator(@DrawableRes int i9) {
    }

    public void setHomeButtonEnabled(boolean z8) {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setShowHideAnimationEnabled(boolean z8) {
    }

    public void setSplitBackgroundDrawable(Drawable drawable) {
    }

    public void setStackedBackgroundDrawable(Drawable drawable) {
    }

    @RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
    public void setWindowTitle(CharSequence charSequence) {
    }
}
