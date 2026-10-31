package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ListMenuPresenter$MenuAdapter extends BaseAdapter {
    private int mExpandedIndex = -1;
    final /* synthetic */ ListMenuPresenter this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListMenuPresenter$MenuAdapter(ListMenuPresenter listMenuPresenter) {
        this.this$0 = listMenuPresenter;
        findExpandedIndex();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void findExpandedIndex() {
        MenuItemImpl expandedItem = this.this$0.mMenu.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<MenuItemImpl> nonActionItems = this.this$0.mMenu.getNonActionItems();
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
    @Override // android.widget.Adapter
    public int getCount() {
        int size = this.this$0.mMenu.getNonActionItems().size() - this.this$0.mItemIndexOffset;
        return this.mExpandedIndex < 0 ? size : size - 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public MenuItemImpl getItem(int i9) {
        ArrayList<MenuItemImpl> nonActionItems = this.this$0.mMenu.getNonActionItems();
        int i10 = i9 + this.this$0.mItemIndexOffset;
        int i11 = this.mExpandedIndex;
        if (i11 >= 0 && i10 >= i11) {
            i10++;
        }
        return nonActionItems.get(i10);
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
            ListMenuPresenter listMenuPresenter = this.this$0;
            view = listMenuPresenter.mInflater.inflate(listMenuPresenter.mItemLayoutRes, viewGroup, false);
        }
        ((MenuView$ItemView) view).initialize(getItem(i9), 0);
        return view;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        findExpandedIndex();
        super.notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public /* bridge */ /* synthetic */ Object getItem(int i9) {
        return getItem(i9);
    }
}
