package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class SequenceInfo implements ValueInfo {
    public final int length;
    public final MapInfo mapInfo;
    public final boolean sequenceOfMaps;
    public final OnnxJavaType sequenceType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public SequenceInfo(int i9, int i10) {
        this.length = i9;
        this.sequenceType = OnnxJavaType.mapFromOnnxTensorType(TensorInfo$OnnxTensorType.mapFromInt(i10));
        this.sequenceOfMaps = false;
        this.mapInfo = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isSequenceOfMaps() {
        return this.sequenceOfMaps;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("SequenceInfo(length=");
        int i9 = this.length;
        sb.append(i9 == -1 ? "UNKNOWN" : Integer.valueOf(i9));
        String string = sb.toString();
        if (this.sequenceOfMaps) {
            StringBuilder sbW = a.w(string, ",type=");
            sbW.append(this.mapInfo.toString());
            sbW.append(")");
            return sbW.toString();
        }
        StringBuilder sbW2 = a.w(string, ",type=");
        sbW2.append(this.sequenceType.toString());
        sbW2.append(")");
        return sbW2.toString();
    }

    public SequenceInfo(int i9, OnnxJavaType onnxJavaType) {
        this.length = i9;
        this.sequenceType = onnxJavaType;
        this.sequenceOfMaps = false;
        this.mapInfo = null;
    }

    public SequenceInfo(int i9, MapInfo mapInfo) {
        this.length = i9;
        this.sequenceOfMaps = true;
        this.mapInfo = mapInfo;
        this.sequenceType = OnnxJavaType.UNKNOWN;
    }

    public SequenceInfo(int i9, OnnxJavaType onnxJavaType, OnnxJavaType onnxJavaType2) {
        this.length = i9;
        this.sequenceType = OnnxJavaType.UNKNOWN;
        this.sequenceOfMaps = true;
        this.mapInfo = new MapInfo(onnxJavaType, onnxJavaType2);
    }
}
