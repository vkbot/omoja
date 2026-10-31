package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface TypedValues$CycleType {
    public static final String NAME = "KeyCycle";
    public static final String S_ALPHA = "alpha";
    public static final String S_CURVE_FIT = "curveFit";
    public static final String S_EASING = "easing";
    public static final String S_ELEVATION = "elevation";
    public static final String S_PATH_ROTATE = "pathRotate";
    public static final String S_PIVOT_X = "pivotX";
    public static final String S_PIVOT_Y = "pivotY";
    public static final String S_PROGRESS = "progress";
    public static final String S_ROTATION_X = "rotationX";
    public static final String S_ROTATION_Y = "rotationY";
    public static final String S_ROTATION_Z = "rotationZ";
    public static final String S_SCALE_X = "scaleX";
    public static final String S_SCALE_Y = "scaleY";
    public static final String S_TRANSLATION_X = "translationX";
    public static final String S_TRANSLATION_Y = "translationY";
    public static final String S_TRANSLATION_Z = "translationZ";
    public static final String S_VISIBILITY = "visibility";
    public static final String S_WAVE_SHAPE = "waveShape";
    public static final int TYPE_ALPHA = 403;
    public static final int TYPE_CURVE_FIT = 401;
    public static final int TYPE_CUSTOM_WAVE_SHAPE = 422;
    public static final int TYPE_EASING = 420;
    public static final int TYPE_ELEVATION = 307;
    public static final int TYPE_PATH_ROTATE = 416;
    public static final int TYPE_PIVOT_X = 313;
    public static final int TYPE_PIVOT_Y = 314;
    public static final int TYPE_PROGRESS = 315;
    public static final int TYPE_ROTATION_X = 308;
    public static final int TYPE_ROTATION_Y = 309;
    public static final int TYPE_ROTATION_Z = 310;
    public static final int TYPE_SCALE_X = 311;
    public static final int TYPE_SCALE_Y = 312;
    public static final int TYPE_TRANSLATION_X = 304;
    public static final int TYPE_TRANSLATION_Y = 305;
    public static final int TYPE_TRANSLATION_Z = 306;
    public static final int TYPE_VISIBILITY = 402;
    public static final int TYPE_WAVE_OFFSET = 424;
    public static final int TYPE_WAVE_PERIOD = 423;
    public static final int TYPE_WAVE_PHASE = 425;
    public static final int TYPE_WAVE_SHAPE = 421;
    public static final String S_CUSTOM_WAVE_SHAPE = "customWave";
    public static final String S_WAVE_PERIOD = "period";
    public static final String S_WAVE_OFFSET = "offset";
    public static final String S_WAVE_PHASE = "phase";
    public static final String[] KEY_WORDS = {"curveFit", "visibility", "alpha", "translationX", "translationY", "translationZ", "elevation", "rotationX", "rotationY", "rotationZ", "scaleX", "scaleY", "pivotX", "pivotY", "progress", "pathRotate", "easing", "waveShape", S_CUSTOM_WAVE_SHAPE, S_WAVE_PERIOD, S_WAVE_OFFSET, S_WAVE_PHASE};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static int getId(String str) {
        str.getClass();
        switch (str) {
            case "easing":
                return TYPE_EASING;
            case "rotationX":
                return 308;
            case "rotationY":
                return 309;
            case "rotationZ":
                return 310;
            case "translationX":
                return 304;
            case "translationY":
                return 305;
            case "translationZ":
                return 306;
            case "progress":
                return 315;
            case "pivotX":
                return 313;
            case "pivotY":
                return 314;
            case "scaleX":
                return 311;
            case "scaleY":
                return 312;
            case "alpha":
                return TYPE_ALPHA;
            case "curveFit":
                return TYPE_CURVE_FIT;
            case "pathRotate":
                return TYPE_PATH_ROTATE;
            case "visibility":
                return TYPE_VISIBILITY;
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
        if (i9 == 416) {
            return 4;
        }
        if (i9 == 420 || i9 == 421) {
            return 8;
        }
        switch (i9) {
            case 304:
            case 305:
            case 306:
            case 307:
            case 308:
            case 309:
            case 310:
            case 311:
            case 312:
            case 313:
            case 314:
            case 315:
                return 4;
            default:
                switch (i9) {
                    case TYPE_CURVE_FIT /* 401 */:
                    case TYPE_VISIBILITY /* 402 */:
                        return 2;
                    case TYPE_ALPHA /* 403 */:
                        return 4;
                    default:
                        switch (i9) {
                            case TYPE_WAVE_PERIOD /* 423 */:
                            case TYPE_WAVE_OFFSET /* 424 */:
                            case TYPE_WAVE_PHASE /* 425 */:
                                return 4;
                            default:
                                return -1;
                        }
                }
        }
    }
}
