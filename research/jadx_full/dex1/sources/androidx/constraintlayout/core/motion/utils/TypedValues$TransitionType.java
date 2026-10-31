package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface TypedValues$TransitionType {
    public static final String NAME = "Transitions";
    public static final int TYPE_AUTO_TRANSITION = 704;
    public static final int TYPE_DURATION = 700;
    public static final int TYPE_FROM = 701;
    public static final int TYPE_INTERPOLATOR = 705;
    public static final int TYPE_PATH_MOTION_ARC = 509;
    public static final int TYPE_STAGGERED = 706;
    public static final int TYPE_TO = 702;
    public static final int TYPE_TRANSITION_FLAGS = 707;
    public static final String S_DURATION = "duration";
    public static final String S_FROM = "from";
    public static final String S_TO = "to";
    public static final String S_PATH_MOTION_ARC = "pathMotionArc";
    public static final String S_AUTO_TRANSITION = "autoTransition";
    public static final String S_INTERPOLATOR = "motionInterpolator";
    public static final String S_STAGGERED = "staggered";
    public static final String S_TRANSITION_FLAGS = "transitionFlags";
    public static final String[] KEY_WORDS = {S_DURATION, S_FROM, S_TO, S_PATH_MOTION_ARC, S_AUTO_TRANSITION, S_INTERPOLATOR, S_STAGGERED, S_FROM, S_TRANSITION_FLAGS};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static int getId(String str) {
        str.getClass();
        switch (str) {
            case "transitionFlags":
                return TYPE_TRANSITION_FLAGS;
            case "duration":
                return TYPE_DURATION;
            case "motionInterpolator":
                return TYPE_INTERPOLATOR;
            case "autoTransition":
                return TYPE_AUTO_TRANSITION;
            case "to":
                return TYPE_TO;
            case "from":
                return TYPE_FROM;
            case "pathMotionArc":
                return 509;
            case "staggered":
                return TYPE_STAGGERED;
            default:
                return -1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static int getType(int i9) {
        if (i9 == 509) {
            return 2;
        }
        switch (i9) {
            case TYPE_DURATION /* 700 */:
                return 2;
            case TYPE_FROM /* 701 */:
            case TYPE_TO /* 702 */:
                return 8;
            default:
                switch (i9) {
                    case TYPE_INTERPOLATOR /* 705 */:
                    case TYPE_TRANSITION_FLAGS /* 707 */:
                        return 8;
                    case TYPE_STAGGERED /* 706 */:
                        return 4;
                    default:
                        return -1;
                }
        }
    }
}
