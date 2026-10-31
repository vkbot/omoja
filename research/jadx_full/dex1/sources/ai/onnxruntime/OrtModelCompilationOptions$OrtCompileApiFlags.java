package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public enum OrtModelCompilationOptions$OrtCompileApiFlags implements OrtFlags {
    NONE(0),
    ERROR_IF_NO_NODES_COMPILED(1),
    ERROR_IF_OUTPUT_FILE_EXISTS(2);

    public final int value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    OrtModelCompilationOptions$OrtCompileApiFlags(int i9) {
        this.value = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OrtFlags
    public int getValue() {
        return this.value;
    }
}
