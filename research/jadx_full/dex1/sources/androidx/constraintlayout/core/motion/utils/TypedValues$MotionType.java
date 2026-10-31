package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface TypedValues$MotionType {
    public static final String NAME = "Motion";
    public static final int TYPE_ANIMATE_CIRCLEANGLE_TO = 606;
    public static final int TYPE_ANIMATE_RELATIVE_TO = 605;
    public static final int TYPE_DRAW_PATH = 608;
    public static final int TYPE_EASING = 603;
    public static final int TYPE_PATHMOTION_ARC = 607;
    public static final int TYPE_PATH_ROTATE = 601;
    public static final int TYPE_POLAR_RELATIVETO = 609;
    public static final int TYPE_QUANTIZE_INTERPOLATOR = 604;
    public static final int TYPE_QUANTIZE_INTERPOLATOR_ID = 612;
    public static final int TYPE_QUANTIZE_INTERPOLATOR_TYPE = 611;
    public static final int TYPE_QUANTIZE_MOTIONSTEPS = 610;
    public static final int TYPE_QUANTIZE_MOTION_PHASE = 602;
    public static final int TYPE_STAGGER = 600;
    public static final String S_STAGGER = "Stagger";
    public static final String S_PATH_ROTATE = "PathRotate";
    public static final String S_QUANTIZE_MOTION_PHASE = "QuantizeMotionPhase";
    public static final String S_EASING = "TransitionEasing";
    public static final String S_QUANTIZE_INTERPOLATOR = "QuantizeInterpolator";
    public static final String S_ANIMATE_RELATIVE_TO = "AnimateRelativeTo";
    public static final String S_ANIMATE_CIRCLEANGLE_TO = "AnimateCircleAngleTo";
    public static final String S_PATHMOTION_ARC = "PathMotionArc";
    public static final String S_DRAW_PATH = "DrawPath";
    public static final String S_POLAR_RELATIVETO = "PolarRelativeTo";
    public static final String S_QUANTIZE_MOTIONSTEPS = "QuantizeMotionSteps";
    public static final String S_QUANTIZE_INTERPOLATOR_TYPE = "QuantizeInterpolatorType";
    public static final String S_QUANTIZE_INTERPOLATOR_ID = "QuantizeInterpolatorID";
    public static final String[] KEY_WORDS = {S_STAGGER, S_PATH_ROTATE, S_QUANTIZE_MOTION_PHASE, S_EASING, S_QUANTIZE_INTERPOLATOR, S_ANIMATE_RELATIVE_TO, S_ANIMATE_CIRCLEANGLE_TO, S_PATHMOTION_ARC, S_DRAW_PATH, S_POLAR_RELATIVETO, S_QUANTIZE_MOTIONSTEPS, S_QUANTIZE_INTERPOLATOR_TYPE, S_QUANTIZE_INTERPOLATOR_ID};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static int getId(String str) {
        str.getClass();
        switch (str) {
            case "AnimateCircleAngleTo":
                return TYPE_ANIMATE_CIRCLEANGLE_TO;
            case "QuantizeMotionPhase":
                return TYPE_QUANTIZE_MOTION_PHASE;
            case "QuantizeMotionSteps":
                return TYPE_QUANTIZE_MOTIONSTEPS;
            case "PathRotate":
                return 601;
            case "QuantizeInterpolator":
                return TYPE_QUANTIZE_INTERPOLATOR;
            case "DrawPath":
                return TYPE_DRAW_PATH;
            case "Stagger":
                return 600;
            case "PolarRelativeTo":
                return TYPE_POLAR_RELATIVETO;
            case "QuantizeInterpolatorType":
                return TYPE_QUANTIZE_INTERPOLATOR_TYPE;
            case "QuantizeInterpolatorID":
                return TYPE_QUANTIZE_INTERPOLATOR_ID;
            case "TransitionEasing":
                return TYPE_EASING;
            case "AnimateRelativeTo":
                return TYPE_ANIMATE_RELATIVE_TO;
            case "PathMotionArc":
                return TYPE_PATHMOTION_ARC;
            default:
                return -1;
        }
    }
}
