package androidx.fragment.app;

import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityOptionsCompat;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: Add missing generic type declarations: [I] */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Fragment$10<I> extends ActivityResultLauncher<I> {
    final /* synthetic */ Fragment this$0;
    final /* synthetic */ ActivityResultContract val$contract;
    final /* synthetic */ AtomicReference val$ref;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Fragment$10(Fragment fragment, AtomicReference atomicReference, ActivityResultContract activityResultContract) {
        this.this$0 = fragment;
        this.val$ref = atomicReference;
        this.val$contract = activityResultContract;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.result.ActivityResultLauncher
    @NonNull
    public ActivityResultContract<I, ?> getContract() {
        return this.val$contract;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.result.ActivityResultLauncher
    public void launch(I i9, @Nullable ActivityOptionsCompat activityOptionsCompat) {
        ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.val$ref.get();
        if (activityResultLauncher != null) {
            activityResultLauncher.launch(i9, activityOptionsCompat);
        } else {
            j1.i.l("Operation cannot be started before fragment is in created state");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.activity.result.ActivityResultLauncher
    public void unregister() {
        ActivityResultLauncher activityResultLauncher = (ActivityResultLauncher) this.val$ref.getAndSet(null);
        if (activityResultLauncher != null) {
            activityResultLauncher.unregister();
        }
    }
}
