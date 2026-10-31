package androidx.cursoradapter.widget;

import android.database.Cursor;
import android.widget.Filter;
import android.widget.Filter$FilterResults;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
class CursorFilter extends Filter {
    CursorFilter$CursorFilterClient mClient;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CursorFilter(CursorFilter$CursorFilterClient cursorFilter$CursorFilterClient) {
        this.mClient = cursorFilter$CursorFilterClient;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.mClient.convertToString((Cursor) obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Filter
    public Filter$FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursorRunQueryOnBackgroundThread = this.mClient.runQueryOnBackgroundThread(charSequence);
        Filter$FilterResults filter$FilterResults = new Filter$FilterResults();
        if (cursorRunQueryOnBackgroundThread != null) {
            filter$FilterResults.count = cursorRunQueryOnBackgroundThread.getCount();
            filter$FilterResults.values = cursorRunQueryOnBackgroundThread;
            return filter$FilterResults;
        }
        filter$FilterResults.count = 0;
        filter$FilterResults.values = null;
        return filter$FilterResults;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.Filter
    public void publishResults(CharSequence charSequence, Filter$FilterResults filter$FilterResults) {
        Cursor cursor = this.mClient.getCursor();
        Object obj = filter$FilterResults.values;
        if (obj == null || obj == cursor) {
            return;
        }
        this.mClient.changeCursor((Cursor) obj);
    }
}
