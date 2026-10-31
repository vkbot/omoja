package androidx.fragment.app;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class DialogFragment$1 implements Runnable {
    final /* synthetic */ DialogFragment this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DialogFragment$1(DialogFragment dialogFragment) {
        this.this$0 = dialogFragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        DialogFragment.access$100(this.this$0).onDismiss(DialogFragment.access$000(this.this$0));
    }
}
