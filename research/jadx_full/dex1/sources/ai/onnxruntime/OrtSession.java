package ai.onnxruntime;

import j1.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OrtSession implements AutoCloseable {
    private final OrtAllocator allocator;
    private boolean closed;
    private final Set<String> inputNames;
    private OnnxModelMetadata metadata;
    private final long nativeHandle;
    private final long numInputs;
    private final long numOutputs;
    private final Set<String> outputNames;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OrtSession(long j9, OrtAllocator ortAllocator) {
        this.closed = false;
        this.nativeHandle = j9;
        this.allocator = ortAllocator;
        this.numInputs = getNumInputs(OnnxRuntime.ortApiHandle, j9);
        this.inputNames = new LinkedHashSet(Arrays.asList(getInputNames(OnnxRuntime.ortApiHandle, j9, ortAllocator.handle)));
        this.numOutputs = getNumOutputs(OnnxRuntime.ortApiHandle, j9);
        this.outputNames = new LinkedHashSet(Arrays.asList(getOutputNames(OnnxRuntime.ortApiHandle, j9, ortAllocator.handle)));
    }

    private native void closeSession(long j9, long j10);

    private native OnnxModelMetadata constructMetadata(long j9, long j10, long j11);

    private static native long createSession(long j9, long j10, String str, long j11);

    private static native long createSession(long j9, long j10, ByteBuffer byteBuffer, int i9, int i10, long j11);

    private static native long createSession(long j9, long j10, byte[] bArr, long j11);

    private native String endProfiling(long j9, long j10, long j11);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getHandle(OnnxValue onnxValue) {
        if (onnxValue instanceof OnnxTensorLike) {
            return ((OnnxTensorLike) onnxValue).nativeHandle;
        }
        if (onnxValue instanceof OnnxSequence) {
            return ((OnnxSequence) onnxValue).nativeHandle;
        }
        if (onnxValue instanceof OnnxMap) {
            return ((OnnxMap) onnxValue).nativeHandle;
        }
        androidx.navigation.b.o(onnxValue.getClass(), "Unexpected OnnxValue subclass, should be {OnnxTensorLike, OnnxSequence, OnnxMap}, found ");
        return 0L;
    }

    private native NodeInfo[] getInputInfo(long j9, long j10, long j11);

    private native String[] getInputNames(long j9, long j10, long j11);

    private native long getNumInputs(long j9, long j10);

    private native long getNumOutputs(long j9, long j10);

    private native NodeInfo[] getOutputInfo(long j9, long j10, long j11);

    private native String[] getOutputNames(long j9, long j10, long j11);

    private native long getProfilingStartTimeInNs(long j9, long j10);

    private native boolean[] run(long j9, long j10, long j11, String[] strArr, long[] jArr, long j12, String[] strArr2, long j13, OnnxValue[] onnxValueArr, long[] jArr2, long j14);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Map<String, NodeInfo> wrapInMap(NodeInfo[] nodeInfoArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(OrtUtil.capacityFromSize(nodeInfoArr.length));
        for (NodeInfo nodeInfo : nodeInfoArr) {
            linkedHashMap.put(nodeInfo.getName(), nodeInfo);
        }
        return linkedHashMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            i.l("Trying to close an already closed OrtSession.");
        } else {
            closeSession(OnnxRuntime.ortApiHandle, this.nativeHandle);
            this.closed = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String endProfiling() {
        return endProfiling(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocator.handle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, NodeInfo> getInputInfo() {
        if (!this.closed) {
            return wrapInMap(getInputInfo(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocator.handle));
        }
        i.l("Asking for inputs from a closed OrtSession.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Set<String> getInputNames() {
        if (!this.closed) {
            return this.inputNames;
        }
        i.l("Asking for inputs from a closed OrtSession.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxModelMetadata getMetadata() {
        OrtSession ortSession;
        if (this.metadata == null) {
            ortSession = this;
            ortSession.metadata = ortSession.constructMetadata(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocator.handle);
        } else {
            ortSession = this;
        }
        return ortSession.metadata;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNumInputs() {
        if (!this.closed) {
            return this.numInputs;
        }
        i.l("Asking for inputs from a closed OrtSession.");
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNumOutputs() {
        if (!this.closed) {
            return this.numOutputs;
        }
        i.l("Asking for outputs from a closed OrtSession.");
        return 0L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, NodeInfo> getOutputInfo() {
        if (!this.closed) {
            return wrapInMap(getOutputInfo(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocator.handle));
        }
        i.l("Asking for outputs from a closed OrtSession.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Set<String> getOutputNames() {
        if (!this.closed) {
            return this.outputNames;
        }
        i.l("Asking for outputs from a closed OrtSession.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getProfilingStartTimeInNs() {
        return getProfilingStartTimeInNs(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtSession$Result run(Map<String, ? extends OnnxTensorLike> map, Set<String> set, Map<String, ? extends OnnxValue> map2, OrtSession$RunOptions ortSession$RunOptions) throws OrtException {
        if (this.closed) {
            i.l("Trying to score a closed OrtSession.");
            return null;
        }
        if ((map.isEmpty() && this.numInputs != 0) || map.size() > this.numInputs) {
            throw new OrtException("Unexpected number of inputs, expected [1," + this.numInputs + ") found " + map.size());
        }
        int size = map2.size() + set.size();
        if (size == 0 || size > this.numOutputs) {
            throw new OrtException("Unexpected number of requestedOutputs & pinnedOutputs, expected [1," + this.numOutputs + ") found " + size);
        }
        int size2 = map.size();
        String[] strArr = new String[size2];
        long[] jArr = new long[map.size()];
        int i9 = 0;
        int i10 = 0;
        for (Map$Entry<String, ? extends OnnxTensorLike> map$Entry : map.entrySet()) {
            if (!this.inputNames.contains(map$Entry.getKey())) {
                throw new OrtException("Unknown input name " + map$Entry.getKey() + ", expected one of " + this.inputNames.toString());
            }
            strArr[i10] = map$Entry.getKey();
            jArr[i10] = map$Entry.getValue().getNativeHandle();
            i10++;
        }
        int size3 = map2.size() + set.size();
        String[] strArr2 = new String[size3];
        OnnxValue[] onnxValueArr = new OnnxValue[size3];
        long[] jArr2 = new long[size3];
        for (Map$Entry<String, ? extends OnnxValue> map$Entry2 : map2.entrySet()) {
            if (!this.outputNames.contains(map$Entry2.getKey())) {
                throw new OrtException("Unknown output name " + map$Entry2.getKey() + ", expected one of " + this.outputNames.toString());
            }
            strArr2[i9] = map$Entry2.getKey();
            onnxValueArr[i9] = map$Entry2.getValue();
            jArr2[i9] = getHandle(map$Entry2.getValue());
            i9++;
        }
        for (String str : set) {
            if (!this.outputNames.contains(str)) {
                StringBuilder sbX = a.x("Unknown output name ", str, ", expected one of ");
                sbX.append(this.outputNames.toString());
                throw new OrtException(sbX.toString());
            }
            if (map2.containsKey(str)) {
                throw new OrtException(a.m("Output '", str, "' was found in both the requested outputs and the pinned outputs"));
            }
            strArr2[i9] = str;
            i9++;
        }
        return new OrtSession$Result(strArr2, onnxValueArr, run(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocator.handle, strArr, jArr, size2, strArr2, size3, onnxValueArr, jArr2, ortSession$RunOptions == null ? 0L : ortSession$RunOptions.getNativeHandle()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        StringBuilder sb = new StringBuilder("OrtSession(numInputs=");
        sb.append(this.numInputs);
        sb.append(",numOutputs=");
        return a.n(sb, this.numOutputs, ")");
    }

    public OrtSession(OrtEnvironment ortEnvironment, byte[] bArr, OrtAllocator ortAllocator, OrtSession$SessionOptions ortSession$SessionOptions) {
        this(createSession(OnnxRuntime.ortApiHandle, ortEnvironment.getNativeHandle(), bArr, ortSession$SessionOptions.getNativeHandle()), ortAllocator);
    }

    public OrtSession(OrtEnvironment ortEnvironment, ByteBuffer byteBuffer, OrtAllocator ortAllocator, OrtSession$SessionOptions ortSession$SessionOptions) {
        this(createSession(OnnxRuntime.ortApiHandle, ortEnvironment.getNativeHandle(), byteBuffer, byteBuffer.position(), byteBuffer.remaining(), ortSession$SessionOptions.getNativeHandle()), ortAllocator);
    }

    public OrtSession(OrtEnvironment ortEnvironment, String str, OrtAllocator ortAllocator, OrtSession$SessionOptions ortSession$SessionOptions) {
        this(createSession(OnnxRuntime.ortApiHandle, ortEnvironment.getNativeHandle(), str, ortSession$SessionOptions.getNativeHandle()), ortAllocator);
    }

    public OrtSession$Result run(Map<String, ? extends OnnxTensorLike> map) {
        return run(map, this.outputNames);
    }

    public OrtSession$Result run(Map<String, ? extends OnnxTensorLike> map, OrtSession$RunOptions ortSession$RunOptions) {
        return run(map, this.outputNames, ortSession$RunOptions);
    }

    public OrtSession$Result run(Map<String, ? extends OnnxTensorLike> map, Set<String> set) {
        return run(map, set, Collections.EMPTY_MAP, null);
    }

    public OrtSession$Result run(Map<String, ? extends OnnxTensorLike> map, Set<String> set, OrtSession$RunOptions ortSession$RunOptions) {
        return run(map, set, Collections.EMPTY_MAP, ortSession$RunOptions);
    }

    public OrtSession$Result run(Map<String, ? extends OnnxTensorLike> map, Map<String, ? extends OnnxValue> map2) {
        return run(map, Collections.EMPTY_SET, map2, null);
    }

    public OrtSession$Result run(Map<String, ? extends OnnxTensorLike> map, Set<String> set, Map<String, ? extends OnnxValue> map2) {
        return run(map, set, map2, null);
    }
}
