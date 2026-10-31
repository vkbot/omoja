package androidx.appcompat.graphics.drawable;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class AnimatedStateListDrawableCompat$Transition {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private AnimatedStateListDrawableCompat$Transition() {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean canReverse() {
        return false;
    }

    public abstract void start();

    public abstract void stop();

    public /* synthetic */ AnimatedStateListDrawableCompat$Transition(AnimatedStateListDrawableCompat$1 animatedStateListDrawableCompat$1) {
        this();
    }

    public void reverse() {
    }
}
