package androidx.constraintlayout.core.motion.utils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface TypedValues$Custom {
    public static final String NAME = "Custom";
    public static final String S_INT = "integer";
    public static final int TYPE_BOOLEAN = 904;
    public static final int TYPE_COLOR = 902;
    public static final int TYPE_DIMENSION = 905;
    public static final int TYPE_FLOAT = 901;
    public static final int TYPE_INT = 900;
    public static final int TYPE_REFERENCE = 906;
    public static final int TYPE_STRING = 903;
    public static final String S_FLOAT = "float";
    public static final String S_COLOR = "color";
    public static final String S_STRING = "string";
    public static final String S_BOOLEAN = "boolean";
    public static final String S_DIMENSION = "dimension";
    public static final String S_REFERENCE = "reference";
    public static final String[] KEY_WORDS = {S_FLOAT, S_COLOR, S_STRING, S_BOOLEAN, S_DIMENSION, S_REFERENCE};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static int getId(String str) {
        str.getClass();
        switch (str) {
            case "dimension":
                return TYPE_DIMENSION;
            case "reference":
                return TYPE_REFERENCE;
            case "string":
                return TYPE_STRING;
            case "boolean":
                return TYPE_BOOLEAN;
            case "color":
                return TYPE_COLOR;
            case "float":
                return TYPE_FLOAT;
            case "integer":
                return TYPE_INT;
            default:
                return -1;
        }
    }
}
