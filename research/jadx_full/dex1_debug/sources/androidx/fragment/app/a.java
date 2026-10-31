package androidx.fragment.app;

import android.animation.Animator;
import androidx.core.os.CancellationSignal$OnCancelListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class a implements CancellationSignal$OnCancelListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Animator f180b;
    public final /* synthetic */ SpecialEffectsController$Operation c;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(Animator animator, SpecialEffectsController$Operation specialEffectsController$Operation) {
        this.f180b = animator;
        this.c = specialEffectsController$Operation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.os.CancellationSignal$OnCancelListener
    public final void onCancel() {
        DefaultSpecialEffectsController.e(this.f180b, this.c);
    }
}
