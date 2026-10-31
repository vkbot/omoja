package androidx.viewpager2.adapter;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2 extends FragmentStateAdapter$DataSetChangeObserver {
    final /* synthetic */ FragmentStateAdapter$FragmentMaxLifecycleEnforcer this$1;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentStateAdapter$FragmentMaxLifecycleEnforcer$2(FragmentStateAdapter$FragmentMaxLifecycleEnforcer fragmentStateAdapter$FragmentMaxLifecycleEnforcer) {
        super(null);
        this.this$1 = fragmentStateAdapter$FragmentMaxLifecycleEnforcer;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.viewpager2.adapter.FragmentStateAdapter$DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView$AdapterDataObserver
    public void onChanged() {
        this.this$1.updateFragmentMaxLifecycle(true);
    }
}
