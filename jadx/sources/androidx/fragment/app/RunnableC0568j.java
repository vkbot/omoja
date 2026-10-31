package androidx.fragment.app;

/* JADX INFO: renamed from: androidx.fragment.app.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0568j implements Runnable {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f456b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Object f457c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ SpecialEffectsController.Operation f458d;

    public /* synthetic */ RunnableC0568j(Object obj, SpecialEffectsController.Operation operation, int i10) {
        this.f456b = i10;
        this.f457c = obj;
        this.f458d = operation;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f456b) {
            case 0:
                SpecialEffectsController.enqueue$lambda$4$lambda$2((SpecialEffectsController) this.f457c, (SpecialEffectsController.FragmentStateManagerOperation) this.f458d);
                break;
            case 1:
                SpecialEffectsController.enqueue$lambda$4$lambda$3((SpecialEffectsController) this.f457c, (SpecialEffectsController.FragmentStateManagerOperation) this.f458d);
                break;
            default:
                DefaultSpecialEffectsController.startTransitions$lambda$14$lambda$13((DefaultSpecialEffectsController.TransitionInfo) this.f457c, this.f458d);
                break;
        }
    }
}
