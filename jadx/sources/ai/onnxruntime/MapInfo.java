package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class MapInfo implements ValueInfo {
    public final OnnxJavaType keyType;
    public final int size;
    public final OnnxJavaType valueType;

    public MapInfo(int i10, int i11, int i12) {
        this.size = i10;
        this.keyType = OnnxJavaType.mapFromOnnxTensorType(TensorInfo.OnnxTensorType.mapFromInt(i11));
        this.valueType = OnnxJavaType.mapFromOnnxTensorType(TensorInfo.OnnxTensorType.mapFromInt(i12));
    }

    public String toString() {
        String str;
        if (this.size == -1) {
            str = "MapInfo(size=UNKNOWN";
        } else {
            str = "MapInfo(size=" + this.size;
        }
        StringBuilder sbM172w = AbstractC0074a.m172w(str, ",keyType=");
        sbM172w.append(this.keyType.toString());
        sbM172w.append(",valueType=");
        sbM172w.append(this.valueType.toString());
        sbM172w.append(")");
        return sbM172w.toString();
    }

    public MapInfo(int i10, OnnxJavaType onnxJavaType, OnnxJavaType onnxJavaType2) {
        this.size = i10;
        this.keyType = onnxJavaType;
        this.valueType = onnxJavaType2;
    }

    public MapInfo(OnnxJavaType onnxJavaType, OnnxJavaType onnxJavaType2) {
        this.size = -1;
        this.keyType = onnxJavaType;
        this.valueType = onnxJavaType2;
    }
}
