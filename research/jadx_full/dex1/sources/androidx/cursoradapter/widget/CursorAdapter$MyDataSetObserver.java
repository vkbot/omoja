package androidx.cursoradapter.widget;

import android.database.DataSetObserver;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class CursorAdapter$MyDataSetObserver extends DataSetObserver {
    final /* synthetic */ CursorAdapter this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CursorAdapter$MyDataSetObserver(CursorAdapter cursorAdapter) {
        this.this$0 = cursorAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.DataSetObserver
    public void onChanged() {
        CursorAdapter cursorAdapter = this.this$0;
        cursorAdapter.mDataValid = true;
        cursorAdapter.notifyDataSetChanged();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.database.DataSetObserver
    public void onInvalidated() {
        CursorAdapter cursorAdapter = this.this$0;
        cursorAdapter.mDataValid = false;
        cursorAdapter.notifyDataSetInvalidated();
    }
}
