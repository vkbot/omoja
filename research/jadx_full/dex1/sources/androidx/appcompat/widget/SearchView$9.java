package androidx.appcompat.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemSelectedListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$9 implements AdapterView$OnItemSelectedListener {
    final /* synthetic */ SearchView this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SearchView$9(SearchView searchView) {
        this.this$0 = searchView;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i9, long j9) {
        this.this$0.onItemSelected(i9);
    }

    @Override // android.widget.AdapterView$OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }
}
