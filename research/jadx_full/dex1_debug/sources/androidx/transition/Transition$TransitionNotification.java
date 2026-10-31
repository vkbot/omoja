package androidx.transition;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface Transition$TransitionNotification {
    public static final Transition$TransitionNotification ON_START = new c(0);
    public static final Transition$TransitionNotification ON_END = new c(1);
    public static final Transition$TransitionNotification ON_CANCEL = new c(2);
    public static final Transition$TransitionNotification ON_PAUSE = new c(3);
    public static final Transition$TransitionNotification ON_RESUME = new c(4);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void a(Transition$TransitionListener transition$TransitionListener, Transition transition, boolean z8) {
        lambda$static$0(transition$TransitionListener, transition, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void b(Transition$TransitionListener transition$TransitionListener, Transition transition, boolean z8) {
        lambda$static$2(transition$TransitionListener, transition, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static /* synthetic */ void c(Transition$TransitionListener transition$TransitionListener, Transition transition, boolean z8) {
        lambda$static$1(transition$TransitionListener, transition, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$static$0(Transition$TransitionListener transition$TransitionListener, Transition transition, boolean z8) {
        transition$TransitionListener.onTransitionCancel(transition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$static$1(Transition$TransitionListener transition$TransitionListener, Transition transition, boolean z8) {
        transition$TransitionListener.onTransitionPause(transition);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ void lambda$static$2(Transition$TransitionListener transition$TransitionListener, Transition transition, boolean z8) {
        transition$TransitionListener.onTransitionResume(transition);
    }

    void notifyListener(@NonNull Transition$TransitionListener transition$TransitionListener, @NonNull Transition transition, boolean z8);
}
