package ai.onnxruntime;

import j1.i;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OrtSession$RunOptions implements AutoCloseable {
    private boolean closed = false;
    private final long nativeHandle = createRunOptions(OnnxRuntime.ortApiHandle);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    private native void addActiveLoraAdapter(long j9, long j10, long j11);

    private native void addRunConfigEntry(long j9, long j10, String str, String str2);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed RunOptions");
        }
    }

    private static native void close(long j9, long j10);

    private static native long createRunOptions(long j9);

    private native int getLogLevel(long j9, long j10);

    private native int getLogVerbosityLevel(long j9, long j10);

    private native String getRunTag(long j9, long j10);

    private native void setLogLevel(long j9, long j10, int i9);

    private native void setLogVerbosityLevel(long j9, long j10, int i9);

    private native void setRunTag(long j9, long j10, String str);

    private native void setTerminate(long j9, long j10, boolean z8);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addActiveLoraAdapter(OrtLoraAdapter ortLoraAdapter) {
        checkClosed();
        ortLoraAdapter.checkClosed();
        addActiveLoraAdapter(OnnxRuntime.ortApiHandle, this.nativeHandle, ortLoraAdapter.getNativeHandle());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void addRunConfigEntry(String str, String str2) {
        checkClosed();
        addRunConfigEntry(OnnxRuntime.ortApiHandle, this.nativeHandle, str, str2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            i.l("Trying to close an already closed RunOptions");
        } else {
            close(OnnxRuntime.ortApiHandle, this.nativeHandle);
            this.closed = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtLoggingLevel getLogLevel() {
        checkClosed();
        return OrtLoggingLevel.mapFromInt(getLogLevel(OnnxRuntime.ortApiHandle, this.nativeHandle));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLogVerbosityLevel() {
        checkClosed();
        return getLogVerbosityLevel(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNativeHandle() {
        return this.nativeHandle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getRunTag() {
        checkClosed();
        return getRunTag(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLogLevel(OrtLoggingLevel ortLoggingLevel) {
        checkClosed();
        setLogLevel(OnnxRuntime.ortApiHandle, this.nativeHandle, ortLoggingLevel.getValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setLogVerbosityLevel(int i9) {
        checkClosed();
        setLogVerbosityLevel(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setRunTag(String str) {
        checkClosed();
        setRunTag(OnnxRuntime.ortApiHandle, this.nativeHandle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setTerminate(boolean z8) {
        checkClosed();
        setTerminate(OnnxRuntime.ortApiHandle, this.nativeHandle, z8);
    }
}
