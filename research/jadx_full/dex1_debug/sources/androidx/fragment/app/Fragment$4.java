package androidx.fragment.app;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fragment$4 implements Runnable {
    final /* synthetic */ Fragment this$0;
    final /* synthetic */ SpecialEffectsController val$controller;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public Fragment$4(Fragment fragment, SpecialEffectsController specialEffectsController) {
        this.this$0 = fragment;
        this.val$controller = specialEffectsController;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        this.val$controller.executePendingOperations();
    }
}
