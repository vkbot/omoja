package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface TypedValues$MotionScene {
    public static final String NAME = "MotionScene";
    public static final int TYPE_DEFAULT_DURATION = 600;
    public static final int TYPE_LAYOUT_DURING_TRANSITION = 601;
    public static final String S_DEFAULT_DURATION = "defaultDuration";
    public static final String S_LAYOUT_DURING_TRANSITION = "layoutDuringTransition";
    public static final String[] KEY_WORDS = {S_DEFAULT_DURATION, S_LAYOUT_DURING_TRANSITION};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static int getId(String str) {
        str.getClass();
        if (str.equals(S_DEFAULT_DURATION)) {
            return 600;
        }
        return !str.equals(S_LAYOUT_DURING_TRANSITION) ? -1 : 601;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static int getType(int i9) {
        if (i9 != 600) {
            return i9 != 601 ? -1 : 1;
        }
        return 2;
    }
}
