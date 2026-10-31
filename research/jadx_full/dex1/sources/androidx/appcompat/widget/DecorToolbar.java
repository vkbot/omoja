package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window$Callback;
import android.widget.AdapterView$OnItemSelectedListener;
import android.widget.SpinnerAdapter;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.view.menu.MenuBuilder$Callback;
import androidx.appcompat.view.menu.MenuPresenter$Callback;
import androidx.core.view.ViewPropertyAnimatorCompat;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public interface DecorToolbar {
    void animateToVisibility(int i9);

    boolean canShowOverflowMenu();

    void collapseActionView();

    void dismissPopupMenus();

    Context getContext();

    View getCustomView();

    int getDisplayOptions();

    int getDropdownItemCount();

    int getDropdownSelectedPosition();

    int getHeight();

    Menu getMenu();

    int getNavigationMode();

    CharSequence getSubtitle();

    CharSequence getTitle();

    ViewGroup getViewGroup();

    int getVisibility();

    boolean hasEmbeddedTabs();

    boolean hasExpandedActionView();

    boolean hasIcon();

    boolean hasLogo();

    boolean hideOverflowMenu();

    void initIndeterminateProgress();

    void initProgress();

    boolean isOverflowMenuShowPending();

    boolean isOverflowMenuShowing();

    boolean isTitleTruncated();

    void restoreHierarchyState(SparseArray<Parcelable> sparseArray);

    void saveHierarchyState(SparseArray<Parcelable> sparseArray);

    void setBackgroundDrawable(Drawable drawable);

    void setCollapsible(boolean z8);

    void setCustomView(View view);

    void setDefaultNavigationContentDescription(int i9);

    void setDefaultNavigationIcon(Drawable drawable);

    void setDisplayOptions(int i9);

    void setDropdownParams(SpinnerAdapter spinnerAdapter, AdapterView$OnItemSelectedListener adapterView$OnItemSelectedListener);

    void setDropdownSelectedPosition(int i9);

    void setEmbeddedTabView(ScrollingTabContainerView scrollingTabContainerView);

    void setHomeButtonEnabled(boolean z8);

    void setIcon(int i9);

    void setIcon(Drawable drawable);

    void setLogo(int i9);

    void setLogo(Drawable drawable);

    void setMenu(Menu menu, MenuPresenter$Callback menuPresenter$Callback);

    void setMenuCallbacks(MenuPresenter$Callback menuPresenter$Callback, MenuBuilder$Callback menuBuilder$Callback);

    void setMenuPrepared();

    void setNavigationContentDescription(int i9);

    void setNavigationContentDescription(CharSequence charSequence);

    void setNavigationIcon(int i9);

    void setNavigationIcon(Drawable drawable);

    void setNavigationMode(int i9);

    void setSubtitle(CharSequence charSequence);

    void setTitle(CharSequence charSequence);

    void setVisibility(int i9);

    void setWindowCallback(Window$Callback window$Callback);

    void setWindowTitle(CharSequence charSequence);

    ViewPropertyAnimatorCompat setupAnimatorToVisibility(int i9, long j9);

    boolean showOverflowMenu();
}
