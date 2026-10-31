package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class MapInfo implements ValueInfo {
    public final OnnxJavaType keyType;
    public final int size;
    public final OnnxJavaType valueType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public MapInfo(int i9, int i10, int i11) {
        this.size = i9;
        this.keyType = OnnxJavaType.mapFromOnnxTensorType(TensorInfo$OnnxTensorType.mapFromInt(i10));
        this.valueType = OnnxJavaType.mapFromOnnxTensorType(TensorInfo$OnnxTensorType.mapFromInt(i11));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        String str;
        if (this.size == -1) {
            str = "MapInfo(size=UNKNOWN";
        } else {
            str = "MapInfo(size=" + this.size;
        }
        StringBuilder sbW = a.w(str, ",keyType=");
        sbW.append(this.keyType.toString());
        sbW.append(",valueType=");
        sbW.append(this.valueType.toString());
        sbW.append(")");
        return sbW.toString();
    }

    public MapInfo(int i9, OnnxJavaType onnxJavaType, OnnxJavaType onnxJavaType2) {
        this.size = i9;
        this.keyType = onnxJavaType;
        this.valueType = onnxJavaType2;
    }

    public MapInfo(OnnxJavaType onnxJavaType, OnnxJavaType onnxJavaType2) {
        this.size = -1;
        this.keyType = onnxJavaType;
        this.valueType = onnxJavaType2;
    }
}
