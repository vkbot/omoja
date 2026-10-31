package androidx.appcompat.widget;

import androidx.cursoradapter.widget.CursorAdapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$2 implements Runnable {
    final /* synthetic */ SearchView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SearchView$2(SearchView searchView) {
        this.this$0 = searchView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        CursorAdapter cursorAdapter = this.this$0.mSuggestionsAdapter;
        if (cursorAdapter instanceof SuggestionsAdapter) {
            cursorAdapter.changeCursor(null);
        }
    }
}
