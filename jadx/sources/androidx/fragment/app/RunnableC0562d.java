package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import java.util.List;

/* JADX INFO: renamed from: androidx.fragment.app.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0562d implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f443b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f444c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Object f445d;

    /* JADX INFO: renamed from: e */
    public final /* synthetic */ Object f446e;

    public /* synthetic */ RunnableC0562d(List list, SpecialEffectsController.Operation operation, DefaultSpecialEffectsController defaultSpecialEffectsController) {
        this.f443b = 1;
        this.f445d = list;
        this.f446e = operation;
        this.f444c = defaultSpecialEffectsController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f443b) {
            case 0:
                DefaultSpecialEffectsController.AnimationAnimationListenerC04993.onAnimationEnd$lambda$0((DefaultSpecialEffectsController) this.f444c, (View) this.f445d, (DefaultSpecialEffectsController.AnimationInfo) this.f446e);
                break;
            case 1:
                DefaultSpecialEffectsController.executeOperations$lambda$2((List) this.f445d, (SpecialEffectsController.Operation) this.f446e, (DefaultSpecialEffectsController) this.f444c);
                break;
            default:
                DefaultSpecialEffectsController.startTransitions$lambda$10((FragmentTransitionImpl) this.f444c, (View) this.f445d, (Rect) this.f446e);
                break;
        }
    }

    public /* synthetic */ RunnableC0562d(Object obj, View view, Object obj2, int i10) {
        this.f443b = i10;
        this.f444c = obj;
        this.f445d = view;
        this.f446e = obj2;
    }
}
