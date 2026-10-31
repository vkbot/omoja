package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ListPopupWindow$3 implements AdapterView$OnItemSelectedListener {
    final /* synthetic */ ListPopupWindow this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListPopupWindow$3(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i9, long j9) {
        DropDownListView dropDownListView;
        if (i9 == -1 || (dropDownListView = this.this$0.mDropDownList) == null) {
            return;
        }
        dropDownListView.setListSelectionHidden(false);
    }

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
