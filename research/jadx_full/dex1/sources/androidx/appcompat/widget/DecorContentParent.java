package androidx.appcompat.widget;

import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.Menu;
import android.view.Window$Callback;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import androidx.appcompat.view.menu.MenuPresenter$Callback;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public interface DecorContentParent {
    boolean canShowOverflowMenu();

    void dismissPopups();

    CharSequence getTitle();

    boolean hasIcon();

    boolean hasLogo();

    boolean hideOverflowMenu();

    void initFeature(int i9);

    boolean isOverflowMenuShowPending();

    boolean isOverflowMenuShowing();

    void restoreToolbarHierarchyState(SparseArray<Parcelable> sparseArray);

    void saveToolbarHierarchyState(SparseArray<Parcelable> sparseArray);

    void setIcon(int i9);

    void setIcon(Drawable drawable);

    void setLogo(int i9);

    void setMenu(Menu menu, MenuPresenter$Callback menuPresenter$Callback);

    void setMenuPrepared();

    void setUiOptions(int i9);

    void setWindowCallback(Window$Callback window$Callback);

    void setWindowTitle(CharSequence charSequence);

    boolean showOverflowMenu();
}
