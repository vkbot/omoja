package ai.onnxruntime;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class SequenceInfo implements ValueInfo {
    public final int length;
    public final MapInfo mapInfo;
    public final boolean sequenceOfMaps;
    public final OnnxJavaType sequenceType;

    public SequenceInfo(int i10, int i11) {
        this.length = i10;
        this.sequenceType = OnnxJavaType.mapFromOnnxTensorType(TensorInfo.OnnxTensorType.mapFromInt(i11));
        this.sequenceOfMaps = false;
        this.mapInfo = null;
    }

    public boolean isSequenceOfMaps() {
        return this.sequenceOfMaps;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("SequenceInfo(length=");
        int i10 = this.length;
        sb.append(i10 == -1 ? "UNKNOWN" : Integer.valueOf(i10));
        String string = sb.toString();
        if (this.sequenceOfMaps) {
            StringBuilder sbM172w = AbstractC0074a.m172w(string, ",type=");
            sbM172w.append(this.mapInfo.toString());
            sbM172w.append(")");
            return sbM172w.toString();
        }
        StringBuilder sbM172w2 = AbstractC0074a.m172w(string, ",type=");
        sbM172w2.append(this.sequenceType.toString());
        sbM172w2.append(")");
        return sbM172w2.toString();
    }

    public SequenceInfo(int i10, OnnxJavaType onnxJavaType) {
        this.length = i10;
        this.sequenceType = onnxJavaType;
        this.sequenceOfMaps = false;
        this.mapInfo = null;
    }

    public SequenceInfo(int i10, MapInfo mapInfo) {
        this.length = i10;
        this.sequenceOfMaps = true;
        this.mapInfo = mapInfo;
        this.sequenceType = OnnxJavaType.UNKNOWN;
    }

    public SequenceInfo(int i10, OnnxJavaType onnxJavaType, OnnxJavaType onnxJavaType2) {
        this.length = i10;
        this.sequenceType = OnnxJavaType.UNKNOWN;
        this.sequenceOfMaps = true;
        this.mapInfo = new MapInfo(onnxJavaType, onnxJavaType2);
    }
}
