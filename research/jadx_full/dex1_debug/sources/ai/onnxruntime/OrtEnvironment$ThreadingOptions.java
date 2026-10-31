package ai.onnxruntime;

import j1.i;
import java.io.IOException;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtEnvironment$ThreadingOptions implements AutoCloseable {
    private boolean closed = false;
    private final long nativeHandle = createThreadingOptions(OnnxRuntime.ortApiHandle);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* bridge */ /* synthetic */ long b(OrtEnvironment$ThreadingOptions ortEnvironment$ThreadingOptions) {
        return ortEnvironment$ThreadingOptions.nativeHandle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed ThreadingOptions");
        }
    }

    private native void closeThreadingOptions(long j9, long j10);

    private static native long createThreadingOptions(long j9);

    private native void setGlobalDenormalAsZero(long j9, long j10);

    private native void setGlobalInterOpNumThreads(long j9, long j10, int i9);

    private native void setGlobalIntraOpNumThreads(long j9, long j10, int i9);

    private native void setGlobalSpinControl(long j9, long j10, int i9);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            i.l("Trying to close a closed ThreadingOptions.");
        } else {
            closeThreadingOptions(OnnxRuntime.ortApiHandle, this.nativeHandle);
            this.closed = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGlobalDenormalAsZero() {
        checkClosed();
        setGlobalDenormalAsZero(OnnxRuntime.ortApiHandle, this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGlobalInterOpNumThreads(int i9) {
        checkClosed();
        if (i9 >= 0) {
            setGlobalInterOpNumThreads(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
        } else {
            i.k("Number of threads must be non-negative.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGlobalIntraOpNumThreads(int i9) {
        checkClosed();
        if (i9 >= 0) {
            setGlobalIntraOpNumThreads(OnnxRuntime.ortApiHandle, this.nativeHandle, i9);
        } else {
            i.k("Number of threads must be non-negative.");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setGlobalSpinControl(boolean z8) {
        checkClosed();
        setGlobalSpinControl(OnnxRuntime.ortApiHandle, this.nativeHandle, z8 ? 1 : 0);
    }
}
