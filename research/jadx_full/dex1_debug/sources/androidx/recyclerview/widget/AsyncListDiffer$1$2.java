package androidx.recyclerview.widget;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AsyncListDiffer$1$2 implements Runnable {
    final /* synthetic */ AsyncListDiffer$1 this$1;
    final /* synthetic */ DiffUtil$DiffResult val$result;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public AsyncListDiffer$1$2(AsyncListDiffer$1 asyncListDiffer$1, DiffUtil$DiffResult diffUtil$DiffResult) {
        this.this$1 = asyncListDiffer$1;
        this.val$result = diffUtil$DiffResult;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        AsyncListDiffer$1 asyncListDiffer$1 = this.this$1;
        AsyncListDiffer asyncListDiffer = asyncListDiffer$1.this$0;
        if (asyncListDiffer.mMaxScheduledGeneration == asyncListDiffer$1.val$runGeneration) {
            asyncListDiffer.latchList(asyncListDiffer$1.val$newList, this.val$result, asyncListDiffer$1.val$commitCallback);
        }
    }
}
