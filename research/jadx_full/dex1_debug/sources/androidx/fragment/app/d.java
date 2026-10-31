package androidx.fragment.app;

import android.graphics.Rect;
import android.view.View;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f183b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ d(List list, SpecialEffectsController$Operation specialEffectsController$Operation, DefaultSpecialEffectsController defaultSpecialEffectsController) {
        this.f183b = 1;
        this.d = list;
        this.e = specialEffectsController$Operation;
        this.c = defaultSpecialEffectsController;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f183b) {
            case 0:
                DefaultSpecialEffectsController$startAnimations$3.a((DefaultSpecialEffectsController) this.c, (View) this.d, (DefaultSpecialEffectsController$AnimationInfo) this.e);
                break;
            case 1:
                DefaultSpecialEffectsController.c((List) this.d, (SpecialEffectsController$Operation) this.e, (DefaultSpecialEffectsController) this.c);
                break;
            default:
                DefaultSpecialEffectsController.i((FragmentTransitionImpl) this.c, (View) this.d, (Rect) this.e);
                break;
        }
    }

    public /* synthetic */ d(Object obj, View view, Object obj2, int i9) {
        this.f183b = i9;
        this.c = obj;
        this.d = view;
        this.e = obj2;
    }
}
