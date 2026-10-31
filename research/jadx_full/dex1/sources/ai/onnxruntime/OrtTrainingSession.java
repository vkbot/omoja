package ai.onnxruntime;

import j1.i;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Map$Entry;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtTrainingSession implements AutoCloseable {
    private final OrtAllocator allocator;
    private final OrtTrainingSession$OrtCheckpointState checkpoint;
    private boolean closed;
    private final Set<String> evalInputNames;
    private final Set<String> evalOutputNames;
    private final String evalPath;
    private final long nativeHandle;
    private final String optimizerPath;
    private final Set<String> trainInputNames;
    private final Set<String> trainOutputNames;
    private final String trainPath;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OrtTrainingSession(long j9, OrtAllocator ortAllocator, OrtTrainingSession$OrtCheckpointState ortTrainingSession$OrtCheckpointState, String str, String str2, String str3) {
        this.closed = false;
        this.nativeHandle = j9;
        this.allocator = ortAllocator;
        this.checkpoint = ortTrainingSession$OrtCheckpointState;
        this.trainPath = str;
        this.evalPath = str2;
        this.optimizerPath = str3;
        this.trainInputNames = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList(getTrainInputNames(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, j9, ortAllocator.handle))));
        this.trainOutputNames = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList(getTrainOutputNames(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, j9, ortAllocator.handle))));
        this.evalInputNames = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList(getEvalInputNames(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, j9, ortAllocator.handle))));
        this.evalOutputNames = Collections.unmodifiableSet(new LinkedHashSet(Arrays.asList(getEvalOutputNames(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, j9, ortAllocator.handle))));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed OrtTrainingSession");
        }
    }

    private native void closeSession(long j9, long j10);

    private static native long createTrainingSession(long j9, long j10, long j11, long j12, long j13, String str, String str2, String str3);

    private native boolean[] evalStep(long j9, long j10, long j11, long j12, String[] strArr, long[] jArr, long j13, String[] strArr2, long j14, OnnxValue[] onnxValueArr, long[] jArr2, long j15);

    private native void exportModelForInference(long j9, long j10, long j11, String str, long j12, String[] strArr);

    private native String[] getEvalInputNames(long j9, long j10, long j11, long j12);

    private native String[] getEvalOutputNames(long j9, long j10, long j11, long j12);

    private native float getLearningRate(long j9, long j10, long j11);

    private native String[] getTrainInputNames(long j9, long j10, long j11, long j12);

    private native String[] getTrainOutputNames(long j9, long j10, long j11, long j12);

    private native void lazyResetGrad(long j9, long j10, long j11);

    private native void optimizerStep(long j9, long j10, long j11, long j12);

    private native void registerLinearLRScheduler(long j9, long j10, long j11, long j12, long j13, float f8);

    private native void schedulerStep(long j9, long j10, long j11);

    private native void setLearningRate(long j9, long j10, long j11, float f8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void setSeed(long j9) {
        setSeed(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, j9);
    }

    private static native void setSeed(long j9, long j10, long j11);

    private native boolean[] trainStep(long j9, long j10, long j11, long j12, String[] strArr, long[] jArr, long j13, String[] strArr2, long j14, OnnxValue[] onnxValueArr, long[] jArr2, long j15);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addProperty(String str, float f8) {
        this.checkpoint.addProperty(str, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            i.l("Trying to close an already closed OrtSession.");
            return;
        }
        closeSession(OnnxRuntime.ortTrainingApiHandle, this.nativeHandle);
        this.checkpoint.close();
        this.closed = true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtSession$Result evalStep(Map<String, ? extends OnnxTensorLike> map, Set<String> set, Map<String, ? extends OnnxValue> map2, OrtSession$RunOptions ortSession$RunOptions) throws OrtException {
        checkClosed();
        if ((map.isEmpty() && this.evalInputNames.size() != 0) || map.size() > this.evalInputNames.size()) {
            throw new OrtException("Unexpected number of inputs, expected [1," + this.evalInputNames.size() + ") found " + map.size());
        }
        int size = this.evalOutputNames.size();
        int size2 = map2.size() + set.size();
        if (size2 == 0 || size2 > size) {
            throw new OrtException(a.g(size, "Unexpected number of requestedOutputs & pinnedOutputs, expected [1,", ") found ", size2));
        }
        int size3 = map.size();
        String[] strArr = new String[size3];
        long[] jArr = new long[map.size()];
        int i9 = 0;
        int i10 = 0;
        for (Map$Entry<String, ? extends OnnxTensorLike> map$Entry : map.entrySet()) {
            if (!this.evalInputNames.contains(map$Entry.getKey())) {
                throw new OrtException("Unknown input name " + map$Entry.getKey() + ", expected one of " + this.evalInputNames.toString());
            }
            strArr[i10] = map$Entry.getKey();
            jArr[i10] = map$Entry.getValue().getNativeHandle();
            i10++;
        }
        int size4 = map2.size() + set.size();
        String[] strArr2 = new String[size4];
        OnnxValue[] onnxValueArr = new OnnxValue[size4];
        long[] jArr2 = new long[size4];
        for (Map$Entry<String, ? extends OnnxValue> map$Entry2 : map2.entrySet()) {
            if (!this.evalOutputNames.contains(map$Entry2.getKey())) {
                throw new OrtException("Unknown output name " + map$Entry2.getKey() + ", expected one of " + this.evalOutputNames.toString());
            }
            strArr2[i9] = map$Entry2.getKey();
            onnxValueArr[i9] = map$Entry2.getValue();
            jArr2[i9] = OrtSession.getHandle(map$Entry2.getValue());
            i9++;
        }
        for (String str : set) {
            if (!this.evalOutputNames.contains(str)) {
                StringBuilder sbX = a.x("Unknown output name ", str, ", expected one of ");
                sbX.append(this.evalOutputNames.toString());
                throw new OrtException(sbX.toString());
            }
            if (map2.containsKey(str)) {
                throw new OrtException(a.m("Output '", str, "' was found in both the requested outputs and the pinned outputs"));
            }
            strArr2[i9] = str;
            i9++;
        }
        return new OrtSession$Result(strArr2, onnxValueArr, evalStep(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, this.allocator.handle, strArr, jArr, size3, strArr2, size4, onnxValueArr, jArr2, ortSession$RunOptions == null ? 0L : ortSession$RunOptions.getNativeHandle()));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void exportModelForInference(Path path, String[] strArr) {
        checkClosed();
        if (strArr.length == 0) {
            i.k("Requires at least one output name");
        } else {
            exportModelForInference(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, c.s(path), strArr.length, strArr);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Set<String> getEvalInputNames() {
        return this.evalInputNames;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Set<String> getEvalOutputNames() {
        return this.evalOutputNames;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFloatProperty(String str) {
        return this.checkpoint.getFloatProperty(this.allocator, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getIntProperty(String str) {
        return this.checkpoint.getIntProperty(this.allocator, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getLearningRate() {
        checkClosed();
        return getLearningRate(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getStringProperty(String str) {
        return this.checkpoint.getStringProperty(this.allocator, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Set<String> getTrainInputNames() {
        return this.trainInputNames;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Set<String> getTrainOutputNames() {
        return this.trainOutputNames;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void lazyResetGrad() {
        checkClosed();
        lazyResetGrad(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void optimizerStep(OrtSession$RunOptions ortSession$RunOptions) {
        checkClosed();
        optimizerStep(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, ortSession$RunOptions == null ? 0L : ortSession$RunOptions.getNativeHandle());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerLinearLRScheduler(long j9, long j10, float f8) {
        registerLinearLRScheduler(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, j9, j10, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void saveCheckpoint(Path path, boolean z8) {
        checkClosed();
        this.checkpoint.saveCheckpoint(path, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void schedulerStep() {
        checkClosed();
        schedulerStep(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLearningRate(float f8) {
        checkClosed();
        setLearningRate(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtSession$Result trainStep(Map<String, ? extends OnnxTensorLike> map, Set<String> set, Map<String, ? extends OnnxValue> map2, OrtSession$RunOptions ortSession$RunOptions) throws OrtException {
        checkClosed();
        if ((map.isEmpty() && this.trainInputNames.size() != 0) || map.size() > this.trainInputNames.size()) {
            throw new OrtException("Unexpected number of inputs, expected [1," + this.trainInputNames.size() + ") found " + map.size());
        }
        int size = this.trainOutputNames.size();
        int size2 = map2.size() + set.size();
        if (size2 == 0 || size2 > size) {
            throw new OrtException(a.g(size, "Unexpected number of requestedOutputs & pinnedOutputs, expected [1,", ") found ", size2));
        }
        int size3 = map.size();
        String[] strArr = new String[size3];
        long[] jArr = new long[map.size()];
        int i9 = 0;
        int i10 = 0;
        for (Map$Entry<String, ? extends OnnxTensorLike> map$Entry : map.entrySet()) {
            if (!this.trainInputNames.contains(map$Entry.getKey())) {
                throw new OrtException("Unknown input name " + map$Entry.getKey() + ", expected one of " + this.trainInputNames);
            }
            strArr[i10] = map$Entry.getKey();
            jArr[i10] = map$Entry.getValue().getNativeHandle();
            i10++;
        }
        int size4 = map2.size() + set.size();
        String[] strArr2 = new String[size4];
        OnnxValue[] onnxValueArr = new OnnxValue[size4];
        long[] jArr2 = new long[size4];
        for (Map$Entry<String, ? extends OnnxValue> map$Entry2 : map2.entrySet()) {
            if (!this.trainOutputNames.contains(map$Entry2.getKey())) {
                throw new OrtException("Unknown output name " + map$Entry2.getKey() + ", expected one of " + this.trainOutputNames.toString());
            }
            strArr2[i9] = map$Entry2.getKey();
            onnxValueArr[i9] = map$Entry2.getValue();
            jArr2[i9] = OrtSession.getHandle(map$Entry2.getValue());
            i9++;
        }
        for (String str : set) {
            if (!this.trainOutputNames.contains(str)) {
                StringBuilder sbX = a.x("Unknown output name ", str, ", expected one of ");
                sbX.append(this.trainOutputNames.toString());
                throw new OrtException(sbX.toString());
            }
            if (map2.containsKey(str)) {
                throw new OrtException(a.m("Output '", str, "' was found in both the requested outputs and the pinned outputs"));
            }
            strArr2[i9] = str;
            i9++;
        }
        return new OrtSession$Result(strArr2, onnxValueArr, trainStep(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, this.allocator.handle, strArr, jArr, size3, strArr2, size4, onnxValueArr, jArr2, ortSession$RunOptions == null ? 0L : ortSession$RunOptions.getNativeHandle()));
    }

    public void addProperty(String str, int i9) {
        this.checkpoint.addProperty(str, i9);
    }

    public void addProperty(String str, String str2) {
        this.checkpoint.addProperty(str, str2);
    }

    public void optimizerStep() {
        optimizerStep(null);
    }

    public OrtTrainingSession(OrtEnvironment ortEnvironment, OrtAllocator ortAllocator, OrtSession$SessionOptions ortSession$SessionOptions, OrtTrainingSession$OrtCheckpointState ortTrainingSession$OrtCheckpointState, String str, String str2, String str3) {
        this(createTrainingSession(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, ortEnvironment.getNativeHandle(), ortSession$SessionOptions.getNativeHandle(), ortTrainingSession$OrtCheckpointState.nativeHandle, str, str2, str3), ortAllocator, ortTrainingSession$OrtCheckpointState, str, str2, str3);
    }

    public OrtSession$Result trainStep(Map<String, ? extends OnnxTensorLike> map) {
        return trainStep(map, this.trainOutputNames, Collections.EMPTY_MAP, null);
    }

    public OrtSession$Result trainStep(Map<String, ? extends OnnxTensorLike> map, OrtSession$RunOptions ortSession$RunOptions) {
        return trainStep(map, this.trainOutputNames, Collections.EMPTY_MAP, ortSession$RunOptions);
    }

    public OrtSession$Result trainStep(Map<String, ? extends OnnxTensorLike> map, Set<String> set) {
        return trainStep(map, set, Collections.EMPTY_MAP, null);
    }

    public OrtSession$Result trainStep(Map<String, ? extends OnnxTensorLike> map, Map<String, ? extends OnnxValue> map2) {
        return trainStep(map, Collections.EMPTY_SET, map2, null);
    }

    public OrtSession$Result evalStep(Map<String, ? extends OnnxTensorLike> map) {
        return evalStep(map, this.evalOutputNames, Collections.EMPTY_MAP, null);
    }

    public OrtSession$Result evalStep(Map<String, ? extends OnnxTensorLike> map, OrtSession$RunOptions ortSession$RunOptions) {
        return evalStep(map, this.evalOutputNames, Collections.EMPTY_MAP, ortSession$RunOptions);
    }

    public OrtSession$Result evalStep(Map<String, ? extends OnnxTensorLike> map, Set<String> set) {
        return evalStep(map, set, Collections.EMPTY_MAP, null);
    }

    public OrtSession$Result evalStep(Map<String, ? extends OnnxTensorLike> map, Map<String, ? extends OnnxValue> map2) {
        return evalStep(map, Collections.EMPTY_SET, map2, null);
    }
}
