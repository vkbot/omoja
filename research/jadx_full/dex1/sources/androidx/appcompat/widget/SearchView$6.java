package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.view.View;
import android.view.View$OnKeyListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$6 implements View$OnKeyListener {
    final /* synthetic */ SearchView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SearchView$6(SearchView searchView) {
        this.this$0 = searchView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnKeyListener
    public boolean onKey(View view, int i9, KeyEvent keyEvent) {
        SearchView searchView = this.this$0;
        if (searchView.mSearchable == null) {
            return false;
        }
        if (searchView.mSearchSrcTextView.isPopupShowing() && this.this$0.mSearchSrcTextView.getListSelection() != -1) {
            return this.this$0.onSuggestionsKey(view, i9, keyEvent);
        }
        if (this.this$0.mSearchSrcTextView.isEmpty() || !keyEvent.hasNoModifiers() || keyEvent.getAction() != 1 || i9 != 66) {
            return false;
        }
        view.cancelLongPress();
        SearchView searchView2 = this.this$0;
        searchView2.launchQuerySearch(0, null, searchView2.mSearchSrcTextView.getText().toString());
        return true;
    }
}
