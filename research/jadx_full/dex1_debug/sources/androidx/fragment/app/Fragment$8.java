package androidx.fragment.app;

import androidx.activity.result.ActivityResultRegistry;
import androidx.arch.core.util.Function;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fragment$8 implements Function<Void, ActivityResultRegistry> {
    final /* synthetic */ Fragment this$0;
    final /* synthetic */ ActivityResultRegistry val$registry;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Incorrect args count in method signature: ()V */
    public Fragment$8(Fragment fragment, ActivityResultRegistry activityResultRegistry) {
        this.this$0 = fragment;
        this.val$registry = activityResultRegistry;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    /* JADX DEBUG: Return type fixed from 'java.lang.Object' to match base method */
    @Override // androidx.arch.core.util.Function
    public /* bridge */ /* synthetic */ ActivityResultRegistry apply(Void r1) {
        return apply2(r1);
    }

    /* JADX INFO: renamed from: apply, reason: avoid collision after fix types in other method */
    public ActivityResultRegistry apply2(Void r1) {
        return this.val$registry;
    }
}
