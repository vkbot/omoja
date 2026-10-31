package androidx.fragment.app;

import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.arch.core.util.Function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fragment$7 implements Function<Void, ActivityResultRegistry> {
    final /* synthetic */ Fragment this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Fragment$7(Fragment fragment) {
        this.this$0 = fragment;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX INFO: renamed from: apply, reason: avoid collision after fix types in other method */
    public ActivityResultRegistry apply2(Void r9) {
        Fragment fragment = this.this$0;
        Object obj = fragment.mHost;
        return obj instanceof ActivityResultRegistryOwner ? ((ActivityResultRegistryOwner) obj).getActivityResultRegistry() : fragment.requireActivity().getActivityResultRegistry();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.arch.core.util.Function
    public /* bridge */ /* synthetic */ ActivityResultRegistry apply(Void r1) {
        return apply2(r1);
    }
}
