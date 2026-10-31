package androidx.appcompat.view.menu;

import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface MenuView$ItemView {
    MenuItemImpl getItemData();

    void initialize(MenuItemImpl menuItemImpl, int i9);

    boolean prefersCondensedTitle();

    void setCheckable(boolean z8);

    void setChecked(boolean z8);

    void setEnabled(boolean z8);

    void setIcon(Drawable drawable);

    void setShortcut(boolean z8, char c);

    void setTitle(CharSequence charSequence);

    boolean showsIcon();
}
