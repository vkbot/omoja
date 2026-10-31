package androidx.appcompat.app;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class AppCompatDelegateImpl$2 implements Runnable {
    final /* synthetic */ AppCompatDelegateImpl this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public AppCompatDelegateImpl$2(AppCompatDelegateImpl appCompatDelegateImpl) {
        this.this$0 = appCompatDelegateImpl;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        AppCompatDelegateImpl appCompatDelegateImpl = this.this$0;
        if ((appCompatDelegateImpl.mInvalidatePanelMenuFeatures & 1) != 0) {
            appCompatDelegateImpl.doInvalidatePanelMenu(0);
        }
        AppCompatDelegateImpl appCompatDelegateImpl2 = this.this$0;
        if ((appCompatDelegateImpl2.mInvalidatePanelMenuFeatures & 4096) != 0) {
            appCompatDelegateImpl2.doInvalidatePanelMenu(AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR);
        }
        AppCompatDelegateImpl appCompatDelegateImpl3 = this.this$0;
        appCompatDelegateImpl3.mInvalidatePanelMenuPosted = false;
        appCompatDelegateImpl3.mInvalidatePanelMenuFeatures = 0;
    }
}
