package androidx.recyclerview.widget;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AsyncListDiffer$1 implements Runnable {
    final /* synthetic */ AsyncListDiffer this$0;
    final /* synthetic */ Runnable val$commitCallback;
    final /* synthetic */ List val$newList;
    final /* synthetic */ List val$oldList;
    final /* synthetic */ int val$runGeneration;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public AsyncListDiffer$1(AsyncListDiffer asyncListDiffer, List list, List list2, int i9, Runnable runnable) {
        this.this$0 = asyncListDiffer;
        this.val$oldList = list;
        this.val$newList = list2;
        this.val$runGeneration = i9;
        this.val$commitCallback = runnable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.this$0.mMainThreadExecutor.execute(new AsyncListDiffer$1$2(this, DiffUtil.calculateDiff(new AsyncListDiffer$1$1(this))));
    }
}
