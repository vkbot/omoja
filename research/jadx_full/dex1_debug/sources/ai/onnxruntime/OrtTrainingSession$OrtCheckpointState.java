package ai.onnxruntime;

import j1.i;
import java.nio.file.Path;
import java.util.Objects;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtTrainingSession$OrtCheckpointState implements AutoCloseable {
    private static final Logger logger = Logger.getLogger(OrtTrainingSession$OrtCheckpointState.class.getName());
    private boolean closed = false;
    final long nativeHandle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtTrainingSession$OrtCheckpointState(long j9) {
        this.nativeHandle = j9;
    }

    private native void addProperty(long j9, long j10, long j11, String str, float f8);

    private native void addProperty(long j9, long j10, long j11, String str, int i9);

    private native void addProperty(long j9, long j10, long j11, String str, String str2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed OrtCheckpointState");
        }
    }

    private native void close(long j9, long j10);

    private native float getFloatProperty(long j9, long j10, long j11, long j12, String str);

    private native int getIntProperty(long j9, long j10, long j11, long j12, String str);

    private native String getStringProperty(long j9, long j10, long j11, long j12, String str);

    private static native long loadCheckpoint(long j9, long j10, String str);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrtTrainingSession$OrtCheckpointState loadCheckpoint(String str) {
        if (OnnxRuntime.trainingEnabled) {
            Objects.requireNonNull(str, "checkpoint path must not be null");
            return new OrtTrainingSession$OrtCheckpointState(loadCheckpoint(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, str));
        }
        i.l("Training is not enabled in this build of ONNX Runtime.");
        return null;
    }

    private native void saveCheckpoint(long j9, long j10, long j11, String str, boolean z8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addProperty(String str, float f8) {
        checkClosed();
        addProperty(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, str, f8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.closed) {
                logger.warning("Closing a checkpoint twice");
            } else {
                close(OnnxRuntime.ortTrainingApiHandle, this.nativeHandle);
                this.closed = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public float getFloatProperty(OrtAllocator ortAllocator, String str) {
        checkClosed();
        return getFloatProperty(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, ortAllocator.handle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getIntProperty(OrtAllocator ortAllocator, String str) {
        checkClosed();
        return getIntProperty(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, ortAllocator.handle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getStringProperty(OrtAllocator ortAllocator, String str) {
        checkClosed();
        return getStringProperty(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, ortAllocator.handle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized boolean isClosed() {
        return this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void saveCheckpoint(Path path, boolean z8) {
        checkClosed();
        Objects.requireNonNull(path, "checkpoint path must not be null");
        saveCheckpoint(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, c.s(path), z8);
    }

    public void addProperty(String str, int i9) {
        checkClosed();
        addProperty(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, str, i9);
    }

    public void addProperty(String str, String str2) {
        checkClosed();
        addProperty(OnnxRuntime.ortApiHandle, OnnxRuntime.ortTrainingApiHandle, this.nativeHandle, str, str2);
    }

    public static OrtTrainingSession$OrtCheckpointState loadCheckpoint(Path path) {
        return loadCheckpoint(c.s(path));
    }
}
