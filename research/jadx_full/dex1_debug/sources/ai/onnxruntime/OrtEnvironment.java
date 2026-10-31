package ai.onnxruntime;

import j1.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Objects;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtEnvironment implements AutoCloseable {
    public static final String DEFAULT_NAME = "ort-java";
    private static volatile OrtEnvironment INSTANCE;
    private static volatile OrtLoggingLevel curLogLevel;
    private static volatile String curLoggingName;
    private static final Logger logger = Logger.getLogger(OrtEnvironment.class.getName());
    final OrtAllocator defaultAllocator;
    final long nativeHandle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OrtEnvironment(OrtLoggingLevel ortLoggingLevel, String str, OrtEnvironment$ThreadingOptions ortEnvironment$ThreadingOptions) {
        long jCreateHandle = createHandle(OnnxRuntime.ortApiHandle, ortLoggingLevel.getValue(), str, OrtEnvironment$ThreadingOptions.b(ortEnvironment$ThreadingOptions));
        this.nativeHandle = jCreateHandle;
        this.defaultAllocator = new OrtAllocator(getDefaultAllocator(OnnxRuntime.ortApiHandle), true);
        Runtime.getRuntime().addShutdownHook(new Thread(new OrtEnvironment$OrtEnvCloser(OnnxRuntime.ortApiHandle, jCreateHandle)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ void b(long j9, long j10) {
        close(j9, j10);
    }

    private static native void close(long j9, long j10);

    private static native long createHandle(long j9, int i9, String str);

    private static native long createHandle(long j9, int i9, String str, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Type inference failed for r0v1. Raw type applied. Possible types: java.util.EnumSet<E extends java.lang.Enum<E>>, java.util.EnumSet<ai.onnxruntime.OrtProvider> */
    public static EnumSet<OrtProvider> getAvailableProviders() {
        return OnnxRuntime.providers.clone();
    }

    private static native long getDefaultAllocator(long j9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static synchronized OrtEnvironment getEnvironment(OrtLoggingLevel ortLoggingLevel, String str) {
        if (INSTANCE == null) {
            try {
                INSTANCE = new OrtEnvironment(ortLoggingLevel, str);
                curLogLevel = ortLoggingLevel;
                curLoggingName = str;
            } catch (OrtException e) {
                throw new IllegalStateException("Failed to create OrtEnvironment", e);
            }
        } else if (ortLoggingLevel.getValue() != curLogLevel.getValue() || !str.equals(curLoggingName)) {
            logger.warning("Tried to change OrtEnvironment's logging level or name while a reference exists.");
        }
        return INSTANCE;
    }

    private static native long[] getEpDevices(long j9, long j10);

    private static native int getModelCompatibilityForEpDevices(long j9, long[] jArr, String str);

    private static native void registerExecutionProviderLibrary(long j9, long j10, String str, String str2);

    private static native void setTelemetry(long j9, long j10, boolean z8);

    private static native void unregisterExecutionProviderLibrary(long j9, long j10, String str);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtSession createSession(ByteBuffer byteBuffer, OrtAllocator ortAllocator, OrtSession$SessionOptions ortSession$SessionOptions) throws OrtException {
        Objects.requireNonNull(byteBuffer, "model array must not be null");
        if (byteBuffer.remaining() == 0) {
            throw new OrtException("Invalid model buffer, no elements remaining.");
        }
        if (byteBuffer.isDirect()) {
            return new OrtSession(this, byteBuffer, ortAllocator, ortSession$SessionOptions);
        }
        throw new OrtException("ByteBuffer is not direct.");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtTrainingSession createTrainingSession(String str, String str2, String str3, String str4, OrtAllocator ortAllocator, OrtSession$SessionOptions ortSession$SessionOptions) {
        if (OnnxRuntime.trainingEnabled) {
            Objects.requireNonNull(str2, "train path must not be null");
            return new OrtTrainingSession(this, ortAllocator, ortSession$SessionOptions, OrtTrainingSession$OrtCheckpointState.loadCheckpoint(str), str2, str3, str4);
        }
        i.l("Training is not enabled in this build of ONNX Runtime.");
        return null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public List<OrtEpDevice> getEpDevices() {
        long[] epDevices = getEpDevices(OnnxRuntime.ortApiHandle, this.nativeHandle);
        ArrayList arrayList = new ArrayList();
        for (long j9 : epDevices) {
            arrayList.add(new OrtEpDevice(j9));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtEnvironment$OrtCompiledModelCompatibility getModelCompatibilityForEpDevices(List<OrtEpDevice> list, String str) {
        if (list == null || list.isEmpty()) {
            i.k("Must supply at least one OrtEpDevice");
            return null;
        }
        long[] jArr = new long[list.size()];
        for (int i9 = 0; i9 < list.size(); i9++) {
            jArr[i9] = list.get(i9).getNativeHandle();
        }
        return OrtEnvironment$OrtCompiledModelCompatibility.mapFromInt(getModelCompatibilityForEpDevices(OnnxRuntime.ortApiHandle, jArr, str));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNativeHandle() {
        return this.nativeHandle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getVersion() {
        return OnnxRuntime.version();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isTrainingEnabled() {
        return OnnxRuntime.trainingEnabled;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void registerExecutionProviderLibrary(String str, String str2) {
        registerExecutionProviderLibrary(OnnxRuntime.ortApiHandle, this.nativeHandle, str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTelemetry(boolean z8) {
        setTelemetry(OnnxRuntime.ortApiHandle, this.nativeHandle, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "OrtEnvironment(name=" + curLoggingName + ",logLevel=" + curLogLevel + ",version=" + getVersion() + ")";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void unregisterExecutionProviderLibrary(String str) {
        unregisterExecutionProviderLibrary(OnnxRuntime.ortApiHandle, this.nativeHandle, str);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
    }

    public OrtTrainingSession createTrainingSession(String str, String str2, String str3, String str4, OrtSession$SessionOptions ortSession$SessionOptions) {
        return createTrainingSession(str, str2, str3, str4, this.defaultAllocator, ortSession$SessionOptions);
    }

    public OrtTrainingSession createTrainingSession(String str, String str2, String str3, String str4) {
        return createTrainingSession(str, str2, str3, str4, new OrtSession$SessionOptions());
    }

    public OrtSession createSession(String str, OrtSession$SessionOptions ortSession$SessionOptions) {
        return createSession(str, this.defaultAllocator, ortSession$SessionOptions);
    }

    public OrtSession createSession(String str, OrtAllocator ortAllocator, OrtSession$SessionOptions ortSession$SessionOptions) {
        Objects.requireNonNull(str, "model path must not be null");
        return new OrtSession(this, str, ortAllocator, ortSession$SessionOptions);
    }

    public OrtSession createSession(ByteBuffer byteBuffer, OrtSession$SessionOptions ortSession$SessionOptions) {
        return createSession(byteBuffer, this.defaultAllocator, ortSession$SessionOptions);
    }

    public OrtSession createSession(ByteBuffer byteBuffer) {
        return createSession(byteBuffer, new OrtSession$SessionOptions());
    }

    public OrtSession createSession(String str) {
        return createSession(str, new OrtSession$SessionOptions());
    }

    public OrtSession createSession(byte[] bArr, OrtSession$SessionOptions ortSession$SessionOptions) {
        return createSession(bArr, this.defaultAllocator, ortSession$SessionOptions);
    }

    public OrtSession createSession(byte[] bArr) {
        return createSession(bArr, new OrtSession$SessionOptions());
    }

    public OrtSession createSession(byte[] bArr, OrtAllocator ortAllocator, OrtSession$SessionOptions ortSession$SessionOptions) {
        Objects.requireNonNull(bArr, "model array must not be null");
        return new OrtSession(this, bArr, ortAllocator, ortSession$SessionOptions);
    }

    private OrtEnvironment(OrtLoggingLevel ortLoggingLevel, String str) {
        long jCreateHandle = createHandle(OnnxRuntime.ortApiHandle, ortLoggingLevel.getValue(), str);
        this.nativeHandle = jCreateHandle;
        this.defaultAllocator = new OrtAllocator(getDefaultAllocator(OnnxRuntime.ortApiHandle), true);
        Runtime.getRuntime().addShutdownHook(new Thread(new OrtEnvironment$OrtEnvCloser(OnnxRuntime.ortApiHandle, jCreateHandle)));
    }

    private OrtEnvironment() {
        this(OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING, "java-default");
    }

    public static OrtEnvironment getEnvironment(String str) {
        return getEnvironment(OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING, str);
    }

    public static OrtEnvironment getEnvironment(OrtLoggingLevel ortLoggingLevel) {
        return getEnvironment(ortLoggingLevel, DEFAULT_NAME);
    }

    public static synchronized OrtEnvironment getEnvironment() {
        if (INSTANCE == null) {
            return getEnvironment(OrtLoggingLevel.ORT_LOGGING_LEVEL_WARNING, DEFAULT_NAME);
        }
        return INSTANCE;
    }

    public static synchronized OrtEnvironment getEnvironment(OrtLoggingLevel ortLoggingLevel, String str, OrtEnvironment$ThreadingOptions ortEnvironment$ThreadingOptions) {
        if (INSTANCE == null) {
            try {
                INSTANCE = new OrtEnvironment(ortLoggingLevel, str, ortEnvironment$ThreadingOptions);
                curLogLevel = ortLoggingLevel;
                curLoggingName = str;
            } catch (OrtException e) {
                throw new IllegalStateException("Failed to create OrtEnvironment", e);
            }
        } else {
            throw new IllegalStateException("Tried to specify the thread pool when creating an OrtEnvironment, but one already exists.");
        }
        return INSTANCE;
    }
}
