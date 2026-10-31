package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import java.util.List;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class ListAdapter$1<T> implements AsyncListDiffer$ListListener<T> {
    final /* synthetic */ ListAdapter this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ListAdapter$1(ListAdapter listAdapter) {
        this.this$0 = listAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.recyclerview.widget.AsyncListDiffer$ListListener
    public void onCurrentListChanged(@NonNull List<T> list, @NonNull List<T> list2) {
        this.this$0.onCurrentListChanged(list, list2);
    }
}
