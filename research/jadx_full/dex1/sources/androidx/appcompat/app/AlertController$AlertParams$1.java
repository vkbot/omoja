package androidx.appcompat.app;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AlertController$AlertParams$1 extends ArrayAdapter<CharSequence> {
    final /* synthetic */ AlertController$AlertParams this$0;
    final /* synthetic */ AlertController$RecycleListView val$listView;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AlertController$AlertParams$1(AlertController$AlertParams alertController$AlertParams, Context context, int i9, int i10, CharSequence[] charSequenceArr, AlertController$RecycleListView alertController$RecycleListView) {
        super(context, i9, i10, charSequenceArr);
        this.this$0 = alertController$AlertParams;
        this.val$listView = alertController$RecycleListView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i9, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i9, view, viewGroup);
        boolean[] zArr = this.this$0.mCheckedItems;
        if (zArr != null && zArr[i9]) {
            this.val$listView.setItemChecked(i9, true);
        }
        return view2;
    }
}
