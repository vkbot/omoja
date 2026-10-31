package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.annotation.RestrictTo;
import androidx.annotation.RestrictTo$Scope;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@RestrictTo({RestrictTo$Scope.LIBRARY_GROUP_PREFIX})
public class MenuAdapter extends BaseAdapter {
    MenuBuilder mAdapterMenu;
    private int mExpandedIndex = -1;
    private boolean mForceShowIcon;
    private final LayoutInflater mInflater;
    private final int mItemLayoutRes;
    private final boolean mOverflowOnly;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z8, int i9) {
        this.mOverflowOnly = z8;
        this.mInflater = layoutInflater;
        this.mAdapterMenu = menuBuilder;
        this.mItemLayoutRes = i9;
        findExpandedIndex();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void findExpandedIndex() {
        MenuItemImpl expandedItem = this.mAdapterMenu.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<MenuItemImpl> nonActionItems = this.mAdapterMenu.getNonActionItems();
            int size = nonActionItems.size();
            for (int i9 = 0; i9 < size; i9++) {
                if (nonActionItems.get(i9) == expandedItem) {
                    this.mExpandedIndex = i9;
                    return;
                }
            }
        }
        this.mExpandedIndex = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MenuBuilder getAdapterMenu() {
        return this.mAdapterMenu;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public int getCount() {
        boolean z8 = this.mOverflowOnly;
        MenuBuilder menuBuilder = this.mAdapterMenu;
        ArrayList<MenuItemImpl> nonActionItems = z8 ? menuBuilder.getNonActionItems() : menuBuilder.getVisibleItems();
        return this.mExpandedIndex < 0 ? nonActionItems.size() : nonActionItems.size() - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean getForceShowIcon() {
        return this.mForceShowIcon;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public MenuItemImpl getItem(int i9) {
        boolean z8 = this.mOverflowOnly;
        MenuBuilder menuBuilder = this.mAdapterMenu;
        ArrayList<MenuItemImpl> nonActionItems = z8 ? menuBuilder.getNonActionItems() : menuBuilder.getVisibleItems();
        int i10 = this.mExpandedIndex;
        if (i10 >= 0 && i9 >= i10) {
            i9++;
        }
        return nonActionItems.get(i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public long getItemId(int i9) {
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public View getView(int i9, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.mInflater.inflate(this.mItemLayoutRes, viewGroup, false);
        }
        int groupId = getItem(i9).getGroupId();
        int i10 = i9 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.mAdapterMenu.isGroupDividerEnabled() && groupId != (i10 >= 0 ? getItem(i10).getGroupId() : groupId));
        MenuView$ItemView menuView$ItemView = (MenuView$ItemView) view;
        if (this.mForceShowIcon) {
            listMenuItemView.setForceShowIcon(true);
        }
        menuView$ItemView.initialize(getItem(i9), 0);
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        findExpandedIndex();
        super.notifyDataSetChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setForceShowIcon(boolean z8) {
        this.mForceShowIcon = z8;
    }

    @Override // android.widget.Adapter
    public /* bridge */ /* synthetic */ Object getItem(int i9) {
        return getItem(i9);
    }
}
