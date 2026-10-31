package androidx.appcompat.app;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AlertController$AlertParams$3 implements AdapterView$OnItemClickListener {
    final /* synthetic */ AlertController$AlertParams this$0;
    final /* synthetic */ AlertController val$dialog;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public AlertController$AlertParams$3(AlertController$AlertParams alertController$AlertParams, AlertController alertController) {
        this.this$0 = alertController$AlertParams;
        this.val$dialog = alertController;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i9, long j9) {
        this.this$0.mOnClickListener.onClick(this.val$dialog.mDialog, i9);
        if (this.this$0.mIsSingleChoice) {
            return;
        }
        this.val$dialog.mDialog.dismiss();
    }
}
