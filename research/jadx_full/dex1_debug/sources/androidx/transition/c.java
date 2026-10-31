package androidx.transition;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final /* synthetic */ class c implements Transition$TransitionNotification {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f218a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ c(int i9) {
        this.f218a = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.transition.Transition$TransitionNotification
    public final void notifyListener(Transition$TransitionListener transition$TransitionListener, Transition transition, boolean z8) {
        switch (this.f218a) {
            case 0:
                transition$TransitionListener.onTransitionStart(transition, z8);
                break;
            case 1:
                transition$TransitionListener.onTransitionEnd(transition, z8);
                break;
            case 2:
                Transition$TransitionNotification.a(transition$TransitionListener, transition, z8);
                break;
            case 3:
                Transition$TransitionNotification.c(transition$TransitionListener, transition, z8);
                break;
            default:
                Transition$TransitionNotification.b(transition$TransitionListener, transition, z8);
                break;
        }
    }
}
