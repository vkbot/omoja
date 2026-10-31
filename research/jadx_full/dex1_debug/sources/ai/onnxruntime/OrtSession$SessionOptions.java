package ai.onnxruntime;

import ai.onnxruntime.providers.CoreMLFlags;
import ai.onnxruntime.providers.NNAPIFlags;
import ai.onnxruntime.providers.OrtCUDAProviderOptions;
import ai.onnxruntime.providers.OrtTensorRTProviderOptions;
import j1.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OrtSession$SessionOptions implements AutoCloseable {
    private boolean closed = false;
    private final long nativeHandle = createOptions(OnnxRuntime.ortApiHandle);
    private final List<Long> customLibraryHandles = new ArrayList();
    private final Map<String, String> configEntries = new LinkedHashMap();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    private native void addACL(long j9, long j10, boolean z8);

    private native void addCPU(long j9, long j10, int i9);

    private native void addCUDA(long j9, long j10, int i9);

    private native void addCUDAV2(long j9, long j10, long j11);

    private native void addConfigEntry(long j9, long j10, String str, String str2);

    private native void addCoreML(long j9, long j10, int i9);

    private native void addDirectML(long j9, long j10, int i9);

    private native void addDnnl(long j9, long j10, int i9);

    private native void addExecutionProvider(long j9, long j10, long j11, long[] jArr, String[] strArr, String[] strArr2);

    private native void addExecutionProvider(long j9, long j10, String str, String[] strArr, String[] strArr2);

    private native void addExternalInitializers(long j9, long j10, String[] strArr, long[] jArr);

    private native void addFreeDimensionOverrideByName(long j9, long j10, String str, long j11);

    private native void addInitializer(long j9, long j10, String str, long j11);

    private native void addNnapi(long j9, long j10, int i9);

    private native void addOpenVINO(long j9, long j10, String str);

    private native void addROCM(long j9, long j10, int i9);

    private native void addTensorrt(long j9, long j10, int i9);

    private native void addTensorrtV2(long j9, long j10, long j11);

    private native void addTvm(long j9, long j10, String str);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed SessionOptions");
        }
    }

    private native void closeCustomLibraries(long[] jArr);

    private native void closeOptions(long j9, long j10);

    private native long createOptions(long j9);

    private native void disablePerSessionThreads(long j9, long j10);

    private native void disableProfiling(long j9, long j10);

    private native void enableProfiling(long j9, long j10, String str);

    private native long registerCustomOpLibrary(long j9, long j10, String str);

    private native void registerCustomOpsUsingFunction(long j9, long j10, String str);

    private native void setCPUArenaAllocator(long j9, long j10, boolean z8);

    private native void setDeterministicCompute(long j9, long j10, boolean z8);

    private native void setExecutionMode(long j9, long j10, int i9);

    private native void setInterOpNumThreads(long j9, long j10, int i9);

    private native void setIntraOpNumThreads(long j9, long j10, int i9);

    private native void setLoggerId(long j9, long j10, String str);

    private native void setMemoryPatternOptimization(long j9, long j10, boolean z8);

    private native void setOptimizationLevel(long j9, long j10, int i9);

    private native void setOptimizationModelFilePath(long j9, long j10, String str);

    private native void setSessionLogLevel(long j9, long j10, int i9);

    private native void setSessionLogVerbosityLevel(long j9, long j10, int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addACL(boolean z8) {
        checkClosed();
        addACL(OnnxRuntime.ortApiHandle, this.nativeHandle, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCPU(boolean z8) {
        checkClosed();
        addCPU(OnnxRuntime.ortApiHandle, this.nativeHandle, z8 ? 1 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCUDA(OrtCUDAProviderOptions ortCUDAProviderOptions) throws OrtException {
        checkClosed();
        if (!OnnxRuntime.extractCUDA()) {
            throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find CUDA shared provider");
        }
        ortCUDAProviderOptions.applyToNative();
        addCUDAV2(OnnxRuntime.ortApiHandle, this.nativeHandle, ortCUDAProviderOptions.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addConfigEntry(String str, String str2) {
        checkClosed();
        addConfigEntry(OnnxRuntime.ortApiHandle, this.nativeHandle, str, str2);
        this.configEntries.put(str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addCoreML(EnumSet<CoreMLFlags> enumSet) {
        checkClosed();
        addCoreML(OnnxRuntime.ortApiHandle, this.nativeHandle, OrtFlags.aggregateToInt(enumSet));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addDirectML(int i9) {
        checkClosed();
        addDirectML(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addDnnl(boolean z8) throws OrtException {
        checkClosed();
        if (!OnnxRuntime.extractDNNL()) {
            throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find DNNL shared provider");
        }
        addDnnl(OnnxRuntime.ortApiHandle, this.nativeHandle, z8 ? 1 : 0);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addExecutionProvider(List<OrtEpDevice> list, Map<String, String> map) {
        checkClosed();
        if (list.isEmpty()) {
            i.k("Must supply at least one OrtEpDevice");
            return;
        }
        long[] jArr = new long[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            jArr[i9] = list.get(i9).getNativeHandle();
        }
        String[][] strArrUnpackMap = OrtUtil.unpackMap(map);
        addExecutionProvider(OnnxRuntime.ortApiHandle, OrtEnvironment.getEnvironment().getNativeHandle(), this.nativeHandle, jArr, strArrUnpackMap[0], strArrUnpackMap[1]);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addExternalInitializers(Map<String, OnnxTensorLike> map) {
        checkClosed();
        if (map.isEmpty()) {
            return;
        }
        String[] strArr = new String[map.size()];
        long[] jArr = new long[map.size()];
        int i9 = 0;
        for (Map$Entry<String, OnnxTensorLike> map$Entry : map.entrySet()) {
            strArr[i9] = map$Entry.getKey();
            jArr[i9] = map$Entry.getValue().nativeHandle;
            i9++;
        }
        addExternalInitializers(OnnxRuntime.ortApiHandle, this.nativeHandle, strArr, jArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addInitializer(String str, OnnxTensorLike onnxTensorLike) {
        checkClosed();
        if (str.trim().isEmpty()) {
            i.k("Initializer name was blank");
        } else {
            addInitializer(OnnxRuntime.ortApiHandle, this.nativeHandle, str, onnxTensorLike.getNativeHandle());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addNnapi(EnumSet<NNAPIFlags> enumSet) {
        checkClosed();
        addNnapi(OnnxRuntime.ortApiHandle, this.nativeHandle, OrtFlags.aggregateToInt(enumSet));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addOpenVINO(String str) throws OrtException {
        checkClosed();
        if (!OnnxRuntime.extractOpenVINO()) {
            throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find OpenVINO shared provider");
        }
        addOpenVINO(OnnxRuntime.ortApiHandle, this.nativeHandle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addQnn(Map<String, String> map) {
        OnnxRuntime.extractQNN();
        addExecutionProvider("QNN", map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addROCM(int i9) throws OrtException {
        checkClosed();
        if (!OnnxRuntime.extractROCM()) {
            throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find ROCM shared provider");
        }
        addROCM(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addTensorrt(OrtTensorRTProviderOptions ortTensorRTProviderOptions) throws OrtException {
        checkClosed();
        if (!OnnxRuntime.extractTensorRT()) {
            throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find TensorRT shared provider");
        }
        ortTensorRTProviderOptions.applyToNative();
        addTensorrtV2(OnnxRuntime.ortApiHandle, this.nativeHandle, ortTensorRTProviderOptions.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addTvm(String str) {
        checkClosed();
        addTvm(OnnxRuntime.ortApiHandle, this.nativeHandle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addWebGPU(Map<String, String> map) {
        addExecutionProvider("WebGPU", map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addXnnpack(Map<String, String> map) {
        addExecutionProvider("XNNPACK", map);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            i.l("Trying to close a closed SessionOptions.");
            return;
        }
        if (!this.customLibraryHandles.isEmpty()) {
            long[] jArr = new long[this.customLibraryHandles.size()];
            for (int i9 = 0; i9 < this.customLibraryHandles.size(); i9++) {
                jArr[i9] = this.customLibraryHandles.get(i9).longValue();
            }
            closeCustomLibraries(jArr);
        }
        closeOptions(OnnxRuntime.ortApiHandle, this.nativeHandle);
        this.closed = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void disablePerSessionThreads() {
        checkClosed();
        disablePerSessionThreads(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void disableProfiling() {
        checkClosed();
        disableProfiling(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void enableProfiling(String str) {
        checkClosed();
        enableProfiling(OnnxRuntime.ortApiHandle, this.nativeHandle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Map<String, String> getConfigEntries() {
        checkClosed();
        return Collections.unmodifiableMap(this.configEntries);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNativeHandle() {
        return this.nativeHandle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerCustomOpLibrary(String str) {
        checkClosed();
        Objects.requireNonNull(str, "path must not be null");
        this.customLibraryHandles.add(Long.valueOf(registerCustomOpLibrary(OnnxRuntime.ortApiHandle, this.nativeHandle, str)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerCustomOpsUsingFunction(String str) {
        checkClosed();
        registerCustomOpsUsingFunction(OnnxRuntime.ortApiHandle, this.nativeHandle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCPUArenaAllocator(boolean z8) {
        checkClosed();
        setCPUArenaAllocator(OnnxRuntime.ortApiHandle, this.nativeHandle, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setDeterministicCompute(boolean z8) {
        checkClosed();
        setDeterministicCompute(OnnxRuntime.ortApiHandle, this.nativeHandle, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setExecutionMode(OrtSession$SessionOptions$ExecutionMode ortSession$SessionOptions$ExecutionMode) {
        checkClosed();
        setExecutionMode(OnnxRuntime.ortApiHandle, this.nativeHandle, ortSession$SessionOptions$ExecutionMode.getID());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInterOpNumThreads(int i9) {
        checkClosed();
        setInterOpNumThreads(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setIntraOpNumThreads(int i9) {
        checkClosed();
        setIntraOpNumThreads(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLoggerId(String str) {
        checkClosed();
        setLoggerId(OnnxRuntime.ortApiHandle, this.nativeHandle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setMemoryPatternOptimization(boolean z8) {
        checkClosed();
        setMemoryPatternOptimization(OnnxRuntime.ortApiHandle, this.nativeHandle, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOptimizationLevel(OrtSession$SessionOptions$OptLevel ortSession$SessionOptions$OptLevel) {
        checkClosed();
        setOptimizationLevel(OnnxRuntime.ortApiHandle, this.nativeHandle, ortSession$SessionOptions$OptLevel.getID());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOptimizedModelFilePath(String str) {
        checkClosed();
        setOptimizationModelFilePath(OnnxRuntime.ortApiHandle, this.nativeHandle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSessionLogLevel(OrtLoggingLevel ortLoggingLevel) {
        checkClosed();
        setSessionLogLevel(OnnxRuntime.ortApiHandle, this.nativeHandle, ortLoggingLevel.getValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSessionLogVerbosityLevel(int i9) {
        checkClosed();
        setSessionLogVerbosityLevel(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setSymbolicDimensionValue(String str, long j9) {
        checkClosed();
        addFreeDimensionOverrideByName(OnnxRuntime.ortApiHandle, this.nativeHandle, str, j9);
    }

    public void addCoreML() {
        addCoreML(EnumSet.noneOf(CoreMLFlags.class));
    }

    public void addNnapi() {
        addNnapi(EnumSet.noneOf(NNAPIFlags.class));
    }

    public void addCoreML(Map<String, String> map) {
        addExecutionProvider("CoreML", map);
    }

    public void addROCM() throws OrtException {
        addROCM(0);
    }

    public void addCUDA() throws OrtException {
        addCUDA(0);
    }

    public void addTensorrt(int i9) throws OrtException {
        checkClosed();
        if (OnnxRuntime.extractTensorRT()) {
            addTensorrt(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
            return;
        }
        throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find TensorRT shared provider");
    }

    public void addCUDA(int i9) throws OrtException {
        checkClosed();
        if (OnnxRuntime.extractCUDA()) {
            addCUDA(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
            return;
        }
        throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find CUDA shared provider");
    }

    private void addExecutionProvider(String str, Map<String, String> map) {
        checkClosed();
        String[][] strArrUnpackMap = OrtUtil.unpackMap(map);
        addExecutionProvider(OnnxRuntime.ortApiHandle, this.nativeHandle, str, strArrUnpackMap[0], strArrUnpackMap[1]);
    }
}
