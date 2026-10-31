package ai.onnxruntime;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType, still in use, count: 1, list:
  (r1v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType) from 0x0030: FILLED_NEW_ARRAY 
  (r0v0 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
  (r1v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
  (r3v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
  (r0v0 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
  (r5v1 ai.onnxruntime.OnnxSparseTensor$SparseTensorType)
 A[WRAPPED] (LINE:49) elemType: ai.onnxruntime.OnnxSparseTensor$SparseTensorType
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OnnxSparseTensor$SparseTensorType {
    UNDEFINED(0),
    COO(1),
    CSRC(2),
    BLOCK_SPARSE(4);

    private static final OnnxSparseTensor$SparseTensorType[] values;
    public final int value;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        OnnxSparseTensor$SparseTensorType onnxSparseTensor$SparseTensorType = UNDEFINED;
        values = new OnnxSparseTensor$SparseTensorType[]{onnxSparseTensor$SparseTensorType, onnxSparseTensor$SparseTensorType, onnxSparseTensor$SparseTensorType, onnxSparseTensor$SparseTensorType, onnxSparseTensor$SparseTensorType};
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OnnxSparseTensor$SparseTensorType(int i9) {
        super(str, i);
        this.value = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxSparseTensor$SparseTensorType mapFromInt(int i9) {
        if (i9 > 0) {
            OnnxSparseTensor$SparseTensorType[] onnxSparseTensor$SparseTensorTypeArr = values;
            if (i9 < onnxSparseTensor$SparseTensorTypeArr.length) {
                return onnxSparseTensor$SparseTensorTypeArr[i9];
            }
        }
        return UNDEFINED;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxSparseTensor$SparseTensorType valueOf(String str) {
        return (OnnxSparseTensor$SparseTensorType) Enum.valueOf(OnnxSparseTensor$SparseTensorType.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OnnxSparseTensor$SparseTensorType[] values() {
        return (OnnxSparseTensor$SparseTensorType[]) $VALUES.clone();
    }
}
