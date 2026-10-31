package ai.onnxruntime;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public interface OnnxValue extends AutoCloseable {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum OnnxValueType {
        ONNX_TYPE_UNKNOWN(0),
        ONNX_TYPE_TENSOR(1),
        ONNX_TYPE_SEQUENCE(2),
        ONNX_TYPE_MAP(3),
        ONNX_TYPE_OPAQUE(4),
        ONNX_TYPE_SPARSETENSOR(5),
        ONNX_TYPE_OPTIONAL(6);

        public final int value;

        OnnxValueType(int i10) {
            this.value = i10;
        }
    }

    static void close(Map<String, ? extends OnnxValue> map) {
        Iterator<? extends OnnxValue> it = map.values().iterator();
        while (it.hasNext()) {
            it.next().close();
        }
    }

    @Override // java.lang.AutoCloseable
    void close();

    ValueInfo getInfo();

    OnnxValueType getType();

    Object getValue();

    boolean isClosed();

    static void close(Iterable<? extends OnnxValue> iterable) {
        Iterator<? extends OnnxValue> it = iterable.iterator();
        while (it.hasNext()) {
            it.next().close();
        }
    }
}
