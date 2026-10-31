package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum OrtSession$SessionOptions$OptLevel {
    NO_OPT(0),
    BASIC_OPT(1),
    EXTENDED_OPT(2),
    LAYOUT_OPT(3),
    ALL_OPT(99);

    private final int id;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    OrtSession$SessionOptions$OptLevel(int i9) {
        this.id = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getID() {
        return this.id;
    }
}
