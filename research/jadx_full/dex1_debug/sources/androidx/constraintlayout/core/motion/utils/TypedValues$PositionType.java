package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface TypedValues$PositionType {
    public static final String[] KEY_WORDS = {"transitionEasing", "drawPath", "percentWidth", "percentHeight", "sizePercent", "percentX", "percentY"};
    public static final String NAME = "KeyPosition";
    public static final String S_DRAWPATH = "drawPath";
    public static final String S_PERCENT_HEIGHT = "percentHeight";
    public static final String S_PERCENT_WIDTH = "percentWidth";
    public static final String S_PERCENT_X = "percentX";
    public static final String S_PERCENT_Y = "percentY";
    public static final String S_SIZE_PERCENT = "sizePercent";
    public static final String S_TRANSITION_EASING = "transitionEasing";
    public static final int TYPE_CURVE_FIT = 508;
    public static final int TYPE_DRAWPATH = 502;
    public static final int TYPE_PATH_MOTION_ARC = 509;
    public static final int TYPE_PERCENT_HEIGHT = 504;
    public static final int TYPE_PERCENT_WIDTH = 503;
    public static final int TYPE_PERCENT_X = 506;
    public static final int TYPE_PERCENT_Y = 507;
    public static final int TYPE_POSITION_TYPE = 510;
    public static final int TYPE_SIZE_PERCENT = 505;
    public static final int TYPE_TRANSITION_EASING = 501;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static int getId(String str) {
        str.getClass();
        switch (str) {
            case "transitionEasing":
                return TYPE_TRANSITION_EASING;
            case "percentWidth":
                return TYPE_PERCENT_WIDTH;
            case "percentHeight":
                return TYPE_PERCENT_HEIGHT;
            case "drawPath":
                return TYPE_DRAWPATH;
            case "sizePercent":
                return TYPE_SIZE_PERCENT;
            case "percentX":
                return TYPE_PERCENT_X;
            case "percentY":
                return TYPE_PERCENT_Y;
            default:
                return -1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static int getType(int i9) {
        if (i9 == 100) {
            return 2;
        }
        if (i9 == 101) {
            return 8;
        }
        switch (i9) {
            case TYPE_TRANSITION_EASING /* 501 */:
            case TYPE_DRAWPATH /* 502 */:
                return 8;
            case TYPE_PERCENT_WIDTH /* 503 */:
            case TYPE_PERCENT_HEIGHT /* 504 */:
            case TYPE_SIZE_PERCENT /* 505 */:
            case TYPE_PERCENT_X /* 506 */:
            case TYPE_PERCENT_Y /* 507 */:
                return 4;
            case TYPE_CURVE_FIT /* 508 */:
                return 2;
            default:
                return -1;
        }
    }
}
