package androidx.fragment.app;

import android.view.View;
import androidx.core.os.CancellationSignal$OnCancelListener;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class b implements CancellationSignal$OnCancelListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f181b;
    public final /* synthetic */ DefaultSpecialEffectsController c;
    public final /* synthetic */ DefaultSpecialEffectsController$AnimationInfo d;
    public final /* synthetic */ SpecialEffectsController$Operation e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ b(View view, DefaultSpecialEffectsController defaultSpecialEffectsController, DefaultSpecialEffectsController$AnimationInfo defaultSpecialEffectsController$AnimationInfo, SpecialEffectsController$Operation specialEffectsController$Operation) {
        this.f181b = view;
        this.c = defaultSpecialEffectsController;
        this.d = defaultSpecialEffectsController$AnimationInfo;
        this.e = specialEffectsController$Operation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.core.os.CancellationSignal$OnCancelListener
    public final void onCancel() {
        DefaultSpecialEffectsController.f(this.f181b, this.c, this.d, this.e);
    }
}
