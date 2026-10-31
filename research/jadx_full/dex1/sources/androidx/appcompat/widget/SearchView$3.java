package androidx.appcompat.widget;

import android.view.View;
import android.view.View$OnFocusChangeListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$3 implements View$OnFocusChangeListener {
    final /* synthetic */ SearchView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SearchView$3(SearchView searchView) {
        this.this$0 = searchView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnFocusChangeListener
    public void onFocusChange(View view, boolean z8) {
        SearchView searchView = this.this$0;
        View$OnFocusChangeListener view$OnFocusChangeListener = searchView.mOnQueryTextFocusChangeListener;
        if (view$OnFocusChangeListener != null) {
            view$OnFocusChangeListener.onFocusChange(searchView, z8);
        }
    }
}
