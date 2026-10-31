package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AlertController$AlertParams$4 implements AdapterView$OnItemClickListener {
    final /* synthetic */ AlertController$AlertParams this$0;
    final /* synthetic */ AlertController val$dialog;
    final /* synthetic */ AlertController$RecycleListView val$listView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public AlertController$AlertParams$4(AlertController$AlertParams alertController$AlertParams, AlertController$RecycleListView alertController$RecycleListView, AlertController alertController) {
        this.this$0 = alertController$AlertParams;
        this.val$listView = alertController$RecycleListView;
        this.val$dialog = alertController;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i9, long j9) {
        boolean[] zArr = this.this$0.mCheckedItems;
        if (zArr != null) {
            zArr[i9] = this.val$listView.isItemChecked(i9);
        }
        this.this$0.mOnCheckboxClickListener.onClick(this.val$dialog.mDialog, i9, this.val$listView.isItemChecked(i9));
    }
}
