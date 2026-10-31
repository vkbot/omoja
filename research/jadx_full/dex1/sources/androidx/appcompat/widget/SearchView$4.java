package androidx.appcompat.widget;

import android.view.View;
import android.view.View$OnLayoutChangeListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$4 implements View$OnLayoutChangeListener {
    final /* synthetic */ SearchView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SearchView$4(SearchView searchView) {
        this.this$0 = searchView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.view.View$OnLayoutChangeListener
    public void onLayoutChange(View view, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.this$0.adjustDropDownSizeAndPosition();
    }
}
