package androidx.viewpager2.adapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentStateAdapter$3 implements Runnable {
    final /* synthetic */ FragmentStateAdapter this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FragmentStateAdapter$3(FragmentStateAdapter fragmentStateAdapter) {
        this.this$0 = fragmentStateAdapter;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public void run() {
        FragmentStateAdapter fragmentStateAdapter = this.this$0;
        fragmentStateAdapter.mIsInGracePeriod = false;
        fragmentStateAdapter.gcFragments();
    }
}
