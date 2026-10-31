package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface TypedValues$AttributesType {
    public static final String NAME = "KeyAttributes";
    public static final String S_ALPHA = "alpha";
    public static final String S_CURVE_FIT = "curveFit";
    public static final String S_CUSTOM = "CUSTOM";
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
    public static final int TYPE_ALPHA = 303;
    public static final int TYPE_CURVE_FIT = 301;
    public static final int TYPE_EASING = 317;
    public static final int TYPE_ELEVATION = 307;
    public static final int TYPE_PATH_ROTATE = 316;
    public static final int TYPE_PIVOT_TARGET = 318;
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
    public static final int TYPE_VISIBILITY = 302;
    public static final String S_FRAME = "frame";
    public static final String S_TARGET = "target";
    public static final String S_PIVOT_TARGET = "pivotTarget";
    public static final String[] KEY_WORDS = {"curveFit", "visibility", "alpha", "translationX", "translationY", "translationZ", "elevation", "rotationX", "rotationY", "rotationZ", "scaleX", "scaleY", "pivotX", "pivotY", "progress", "pathRotate", "easing", "CUSTOM", S_FRAME, S_TARGET, S_PIVOT_TARGET};

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
            case "target":
                return TypedValues.TYPE_TARGET;
            case "elevation":
                return 307;
            case "alpha":
                return 303;
            case "frame":
                return 100;
            case "curveFit":
                return 301;
            case "pathRotate":
                return TYPE_PATH_ROTATE;
            case "pivotTarget":
                return TYPE_PIVOT_TARGET;
            case "visibility":
                return 302;
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
            case 301:
            case 302:
                return 2;
            case 303:
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
            case TYPE_PATH_ROTATE /* 316 */:
                return 4;
            case TYPE_EASING /* 317 */:
            case TYPE_PIVOT_TARGET /* 318 */:
                return 8;
            default:
                return -1;
        }
    }
}
