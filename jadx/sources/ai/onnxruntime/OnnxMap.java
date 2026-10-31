package ai.onnxruntime;

import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Logger;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public class OnnxMap implements OnnxValue {
    private static final Logger logger = Logger.getLogger(OnnxMap.class.getName());
    final long allocatorHandle;
    private boolean closed;
    private final MapInfo info;
    final long nativeHandle;
    private final boolean stringKeys;
    private final OnnxMapValueType valueType;

    /* JADX INFO: renamed from: ai.onnxruntime.OnnxMap$1 */
    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static /* synthetic */ class C00661 {
        static final /* synthetic */ int[] $SwitchMap$ai$onnxruntime$OnnxJavaType;
        static final /* synthetic */ int[] $SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType;

        static {
            int[] iArr = new int[OnnxMapValueType.values().length];
            $SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType = iArr;
            try {
                iArr[OnnxMapValueType.STRING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType[OnnxMapValueType.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType[OnnxMapValueType.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType[OnnxMapValueType.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[OnnxJavaType.values().length];
            $SwitchMap$ai$onnxruntime$OnnxJavaType = iArr2;
            try {
                iArr2[OnnxJavaType.FLOAT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.DOUBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.STRING.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.UINT8.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.INT8.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.INT16.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.BOOL.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$ai$onnxruntime$OnnxJavaType[OnnxJavaType.UNKNOWN.ordinal()] = 10;
            } catch (NoSuchFieldError unused14) {
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum OnnxMapValueType {
        INVALID(0),
        STRING(1),
        LONG(2),
        FLOAT(3),
        DOUBLE(4);

        private static final OnnxMapValueType[] values = new OnnxMapValueType[5];
        final int value;

        static {
            for (OnnxMapValueType onnxMapValueType : values()) {
                values[onnxMapValueType.value] = onnxMapValueType;
            }
        }

        OnnxMapValueType(int i10) {
            this.value = i10;
        }

        public static OnnxMapValueType mapFromInt(int i10) {
            if (i10 > 0) {
                OnnxMapValueType[] onnxMapValueTypeArr = values;
                if (i10 < onnxMapValueTypeArr.length) {
                    return onnxMapValueTypeArr[i10];
                }
            }
            return INVALID;
        }

        public static OnnxMapValueType mapFromOnnxJavaType(OnnxJavaType onnxJavaType) {
            int i10 = C00661.$SwitchMap$ai$onnxruntime$OnnxJavaType[onnxJavaType.ordinal()];
            if (i10 == 1) {
                return FLOAT;
            }
            if (i10 == 2) {
                return DOUBLE;
            }
            if (i10 != 3) {
                return i10 != 4 ? INVALID : STRING;
            }
            return LONG;
        }
    }

    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            C0075b.m190o("Failed to load onnx-runtime library", e);
        }
    }

    public OnnxMap(long j10, long j11, MapInfo mapInfo) {
        this.nativeHandle = j10;
        this.allocatorHandle = j11;
        this.info = mapInfo;
        this.stringKeys = mapInfo.keyType == OnnxJavaType.STRING;
        this.valueType = OnnxMapValueType.mapFromOnnxJavaType(mapInfo.valueType);
        this.closed = false;
    }

    private native void close(long j10, long j11);

    private native double[] getDoubleValues(long j10, long j11, long j12);

    private native float[] getFloatValues(long j10, long j11, long j12);

    private native long[] getLongKeys(long j10, long j11, long j12);

    private native long[] getLongValues(long j10, long j11, long j12);

    private Object[] getMapKeys() {
        return this.stringKeys ? getStringKeys(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle) : Arrays.stream(getLongKeys(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle)).boxed().toArray();
    }

    private Object[] getMapValues() {
        int i10 = C00661.$SwitchMap$ai$onnxruntime$OnnxMap$OnnxMapValueType[this.valueType.ordinal()];
        if (i10 == 1) {
            return getStringValues(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle);
        }
        if (i10 == 2) {
            return Arrays.stream(getLongValues(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle)).boxed().toArray();
        }
        if (i10 != 3) {
            if (i10 == 4) {
                return Arrays.stream(getDoubleValues(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle)).boxed().toArray();
            }
            C0075b.m181f(this.valueType, "Invalid or unknown valueType: ");
            return null;
        }
        float[] floatValues = getFloatValues(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle);
        Float[] fArr = new Float[floatValues.length];
        for (int i11 = 0; i11 < floatValues.length; i11++) {
            fArr[i11] = Float.valueOf(floatValues[i11]);
        }
        return fArr;
    }

    private native String[] getStringKeys(long j10, long j11, long j12);

    private native String[] getStringValues(long j10, long j11, long j12);

    public void checkClosed() {
        if (this.closed) {
            C1929i.m3030l("Trying to use a closed OnnxValue");
        }
    }

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

    @Override // ai.onnxruntime.OnnxValue
    public OnnxValue.OnnxValueType getType() {
        return OnnxValue.OnnxValueType.ONNX_TYPE_MAP;
    }

    @Override // ai.onnxruntime.OnnxValue
    public Map<? extends Object, ? extends Object> getValue() {
        checkClosed();
        Object[] mapKeys = getMapKeys();
        Object[] mapValues = getMapValues();
        HashMap map = new HashMap(OrtUtil.capacityFromSize(mapKeys.length));
        for (int i10 = 0; i10 < mapKeys.length; i10++) {
            map.put(mapKeys[i10], mapValues[i10]);
        }
        return map;
    }

    @Override // ai.onnxruntime.OnnxValue
    public synchronized boolean isClosed() {
        return this.closed;
    }

    public int size() {
        return this.info.size;
    }

    public String toString() {
        return "ONNXMap(size=" + size() + ",info=" + this.info.toString() + ")";
    }

    @Override // ai.onnxruntime.OnnxValue
    public MapInfo getInfo() {
        return this.info;
    }
}
