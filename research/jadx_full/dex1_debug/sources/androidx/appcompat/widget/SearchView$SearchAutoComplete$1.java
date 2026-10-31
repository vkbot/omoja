package androidx.appcompat.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SearchView$SearchAutoComplete$1 implements Runnable {
    final /* synthetic */ SearchView$SearchAutoComplete this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SearchView$SearchAutoComplete$1(SearchView$SearchAutoComplete searchView$SearchAutoComplete) {
        this.this$0 = searchView$SearchAutoComplete;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.this$0.showSoftInputIfNecessary();
    }
}
