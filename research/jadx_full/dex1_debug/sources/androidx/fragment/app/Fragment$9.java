package androidx.fragment.app;

import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.arch.core.util.Function;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fragment$9 extends Fragment$OnPreAttachedListener {
    final /* synthetic */ Fragment this$0;
    final /* synthetic */ ActivityResultCallback val$callback;
    final /* synthetic */ ActivityResultContract val$contract;
    final /* synthetic */ AtomicReference val$ref;
    final /* synthetic */ Function val$registryProvider;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Fragment$9(Fragment fragment, Function function, AtomicReference atomicReference, ActivityResultContract activityResultContract, ActivityResultCallback activityResultCallback) {
        super(null);
        this.this$0 = fragment;
        this.val$registryProvider = function;
        this.val$ref = atomicReference;
        this.val$contract = activityResultContract;
        this.val$callback = activityResultCallback;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.fragment.app.Fragment$OnPreAttachedListener
    public void onPreAttached() {
        String strGenerateActivityResultKey = this.this$0.generateActivityResultKey();
        this.val$ref.set(((ActivityResultRegistry) this.val$registryProvider.apply(null)).register(strGenerateActivityResultKey, this.this$0, this.val$contract, this.val$callback));
    }
}
