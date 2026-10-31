package p051e4;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.ListPopupWindow;

/* JADX INFO: renamed from: e4.u */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1488u implements AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C1490w f3661b;

    public C1488u(C1490w c1490w) {
        this.f3661b = c1490w;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i10, long j10) {
        C1490w c1490w = this.f3661b;
        ListPopupWindow listPopupWindow = c1490w.f3665b;
        c1490w.setText(c1490w.convertSelectionToString(i10 < 0 ? listPopupWindow.getSelectedItem() : c1490w.getAdapter().getItem(i10)), false);
        AdapterView.OnItemClickListener onItemClickListener = c1490w.getOnItemClickListener();
        if (onItemClickListener != null) {
            if (view == null || i10 < 0) {
                view = listPopupWindow.getSelectedView();
                i10 = listPopupWindow.getSelectedItemPosition();
                j10 = listPopupWindow.getSelectedItemId();
            }
            onItemClickListener.onItemClick(listPopupWindow.getListView(), view, i10, j10);
        }
        listPopupWindow.dismiss();
    }
}
