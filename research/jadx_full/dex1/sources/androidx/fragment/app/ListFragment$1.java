package androidx.fragment.app;

import android.widget.ListView;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ListFragment$1 implements Runnable {
    final /* synthetic */ ListFragment this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListFragment$1(ListFragment listFragment) {
        this.this$0 = listFragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        ListView listView = this.this$0.mList;
        listView.focusableViewAvailable(listView);
    }
}
