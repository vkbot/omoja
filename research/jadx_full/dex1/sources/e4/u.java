package e4;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import androidx.appcompat.widget.ListPopupWindow;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class u implements AdapterView$OnItemClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w f2115b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public u(w wVar) {
        this.f2115b = wVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i9, long j9) {
        w wVar = this.f2115b;
        ListPopupWindow listPopupWindow = wVar.f2117b;
        wVar.setText(w.a(wVar, i9 < 0 ? listPopupWindow.getSelectedItem() : wVar.getAdapter().getItem(i9)), false);
        AdapterView$OnItemClickListener onItemClickListener = wVar.getOnItemClickListener();
        if (onItemClickListener != null) {
            if (view == null || i9 < 0) {
                view = listPopupWindow.getSelectedView();
                i9 = listPopupWindow.getSelectedItemPosition();
                j9 = listPopupWindow.getSelectedItemId();
            }
            onItemClickListener.onItemClick(listPopupWindow.getListView(), view, i9, j9);
        }
        listPopupWindow.dismiss();
    }
}
