package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatSpinner$DropdownPopup$1 implements AdapterView$OnItemClickListener {
    final /* synthetic */ AppCompatSpinner$DropdownPopup this$1;
    final /* synthetic */ AppCompatSpinner val$this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public AppCompatSpinner$DropdownPopup$1(AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup, AppCompatSpinner appCompatSpinner) {
        this.this$1 = appCompatSpinner$DropdownPopup;
        this.val$this$0 = appCompatSpinner;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i9, long j9) {
        this.this$1.this$0.setSelection(i9);
        if (this.this$1.this$0.getOnItemClickListener() != null) {
            AppCompatSpinner$DropdownPopup appCompatSpinner$DropdownPopup = this.this$1;
            appCompatSpinner$DropdownPopup.this$0.performItemClick(view, i9, appCompatSpinner$DropdownPopup.mAdapter.getItemId(i9));
        }
        this.this$1.dismiss();
    }
}
