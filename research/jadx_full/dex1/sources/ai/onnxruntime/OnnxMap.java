package ai.onnxruntime;

import j1.i;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OnnxMap implements OnnxValue {
    private static final Logger logger = Logger.getLogger(OnnxMap.class.getName());
    final long allocatorHandle;
    private boolean closed;
    private final MapInfo info;
    final long nativeHandle;
    private final boolean stringKeys;
    private final OnnxMap$OnnxMapValueType valueType;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxMap(long j9, long j10, MapInfo mapInfo) {
        this.nativeHandle = j9;
        this.allocatorHandle = j10;
        this.info = mapInfo;
        this.stringKeys = mapInfo.keyType == OnnxJavaType.STRING;
        this.valueType = OnnxMap$OnnxMapValueType.mapFromOnnxJavaType(mapInfo.valueType);
        this.closed = false;
    }

    private native void close(long j9, long j10);

    private native double[] getDoubleValues(long j9, long j10, long j11);

    private native float[] getFloatValues(long j9, long j10, long j11);

    private native long[] getLongKeys(long j9, long j10, long j11);

    private native long[] getLongValues(long j9, long j10, long j11);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object[] getMapKeys() {
        return this.stringKeys ? getStringKeys(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle) : Arrays.stream(getLongKeys(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle)).boxed().toArray();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private Object[] getMapValues() {
        int i9 = OnnxMap$1.$SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType[this.valueType.ordinal()];
        if (i9 == 1) {
            return getStringValues(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle);
        }
        if (i9 == 2) {
            return Arrays.stream(getLongValues(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle)).boxed().toArray();
        }
        if (i9 != 3) {
            if (i9 == 4) {
                return Arrays.stream(getDoubleValues(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle)).boxed().toArray();
            }
            b.f(this.valueType, "Invalid or unknown valueType: ");
            return null;
        }
        float[] floatValues = getFloatValues(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle);
        Float[] fArr = new Float[floatValues.length];
        for (int i10 = 0; i10 < floatValues.length; i10++) {
            fArr[i10] = Float.valueOf(floatValues[i10]);
        }
        return fArr;
    }

    private native String[] getStringKeys(long j9, long j10, long j11);

    private native String[] getStringValues(long j9, long j10, long j11);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed OnnxValue");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.closed) {
                logger.warning("Closing an already closed map.");
            } else {
                close(OnnxRuntime.ortApiHandle, this.nativeHandle);
                this.closed = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public /* bridge */ /* synthetic */ ValueInfo getInfo() {
        return getInfo();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public OnnxValue$OnnxValueType getType() {
        return OnnxValue$OnnxValueType.ONNX_TYPE_MAP;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public Map<? extends Object, ? extends Object> getValue() {
        checkClosed();
        Object[] mapKeys = getMapKeys();
        Object[] mapValues = getMapValues();
        HashMap map = new HashMap(OrtUtil.capacityFromSize(mapKeys.length));
        for (int i9 = 0; i9 < mapKeys.length; i9++) {
            map.put(mapKeys[i9], mapValues[i9]);
        }
        return map;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public synchronized boolean isClosed() {
        return this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int size() {
        return this.info.size;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "ONNXMap(size=" + size() + ",info=" + this.info.toString() + ")";
    }

    @Override // ai.onnxruntime.OnnxValue
    public MapInfo getInfo() {
        return this.info;
    }

    @Override // ai.onnxruntime.OnnxValue
    public /* bridge */ /* synthetic */ Object getValue() {
        return getValue();
    }
}
