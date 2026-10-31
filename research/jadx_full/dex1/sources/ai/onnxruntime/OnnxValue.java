package ai.onnxruntime;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public interface OnnxValue extends AutoCloseable {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static void close(Map<String, ? extends OnnxValue> map) {
        Iterator<? extends OnnxValue> it = map.values().iterator();
        while (it.hasNext()) {
            it.next().close();
        }
    }

    @Override // java.lang.AutoCloseable
    void close();

    ValueInfo getInfo();

    OnnxValue$OnnxValueType getType();

    Object getValue();

    boolean isClosed();

    static void close(Iterable<? extends OnnxValue> iterable) {
        Iterator<? extends OnnxValue> it = iterable.iterator();
        while (it.hasNext()) {
            it.next().close();
        }
    }
}
