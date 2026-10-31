package androidx.transition;

import androidx.annotation.NonNull;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface Transition$TransitionListener {
    void onTransitionCancel(@NonNull Transition transition);

    void onTransitionEnd(@NonNull Transition transition);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default void onTransitionEnd(@NonNull Transition transition, boolean z8) {
        onTransitionEnd(transition);
    }

    void onTransitionPause(@NonNull Transition transition);

    void onTransitionResume(@NonNull Transition transition);

    void onTransitionStart(@NonNull Transition transition);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    default void onTransitionStart(@NonNull Transition transition, boolean z8) {
        onTransitionStart(transition);
    }
}
