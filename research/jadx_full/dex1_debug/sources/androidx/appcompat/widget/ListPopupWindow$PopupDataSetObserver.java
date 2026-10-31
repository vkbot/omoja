package androidx.appcompat.widget;

import android.database.DataSetObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ListPopupWindow$PopupDataSetObserver extends DataSetObserver {
    final /* synthetic */ ListPopupWindow this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListPopupWindow$PopupDataSetObserver(ListPopupWindow listPopupWindow) {
        this.this$0 = listPopupWindow;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.DataSetObserver
    public void onChanged() {
        if (this.this$0.isShowing()) {
            this.this$0.show();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        this.this$0.dismiss();
    }
}
