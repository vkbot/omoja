package androidx.appcompat.widget;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.app.ActionBar$Tab;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ScrollingTabContainerView$TabAdapter extends BaseAdapter {
    final /* synthetic */ ScrollingTabContainerView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ScrollingTabContainerView$TabAdapter(ScrollingTabContainerView scrollingTabContainerView) {
        this.this$0 = scrollingTabContainerView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public int getCount() {
        return this.this$0.mTabLayout.getChildCount();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Adapter
    public Object getItem(int i9) {
        return ((ScrollingTabContainerView$TabView) this.this$0.mTabLayout.getChildAt(i9)).getTab();
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
            return this.this$0.createTabView((ActionBar$Tab) getItem(i9), true);
        }
        ((ScrollingTabContainerView$TabView) view).bindTab((ActionBar$Tab) getItem(i9));
        return view;
    }
}
