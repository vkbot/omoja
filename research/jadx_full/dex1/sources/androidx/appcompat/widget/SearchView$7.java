package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView$OnEditorActionListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$7 implements TextView$OnEditorActionListener {
    final /* synthetic */ SearchView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SearchView$7(SearchView searchView) {
        this.this$0 = searchView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.TextView$OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i9, KeyEvent keyEvent) {
        this.this$0.onSubmitQuery();
        return true;
    }
}
