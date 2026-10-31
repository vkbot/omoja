package androidx.fragment.app;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class j implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f190b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ SpecialEffectsController$Operation d;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ j(Object obj, SpecialEffectsController$Operation specialEffectsController$Operation, int i9) {
        this.f190b = i9;
        this.c = obj;
        this.d = specialEffectsController$Operation;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f190b) {
            case 0:
                SpecialEffectsController.a((SpecialEffectsController) this.c, (SpecialEffectsController$FragmentStateManagerOperation) this.d);
                break;
            case 1:
                SpecialEffectsController.b((SpecialEffectsController) this.c, (SpecialEffectsController$FragmentStateManagerOperation) this.d);
                break;
            default:
                DefaultSpecialEffectsController.h((DefaultSpecialEffectsController$TransitionInfo) this.c, this.d);
                break;
        }
    }
}
