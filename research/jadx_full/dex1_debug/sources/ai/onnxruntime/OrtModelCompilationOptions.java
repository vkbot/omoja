package ai.onnxruntime;

import j1.i;
import java.nio.ByteBuffer;
import java.util.EnumSet;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtModelCompilationOptions implements AutoCloseable {
    private ByteBuffer buffer;
    private boolean closed = false;
    private final long nativeHandle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtModelCompilationOptions(long j9) {
        this.nativeHandle = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed OrtModelCompilationOptions.");
        }
    }

    private static native void close(long j9, long j10);

    private static native void compileModel(long j9, long j10, long j11, long j12);

    private static native long createFromSessionOptions(long j9, long j10, long j11, long j12);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrtModelCompilationOptions createFromSessionOptions(OrtEnvironment ortEnvironment, OrtSession$SessionOptions ortSession$SessionOptions) {
        return new OrtModelCompilationOptions(createFromSessionOptions(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, ortEnvironment.getNativeHandle(), ortSession$SessionOptions.getNativeHandle()));
    }

    private static native void setCompilationFlags(long j9, long j10, long j11, int i9);

    private static native void setEpContextEmbedMode(long j9, long j10, long j11, boolean z8);

    private static native void setInputModelFromBuffer(long j9, long j10, long j11, ByteBuffer byteBuffer, long j12, long j13);

    private static native void setInputModelPath(long j9, long j10, long j11, String str);

    private static native void setOutputExternalInitializersPath(long j9, long j10, long j11, String str, long j12);

    private static native void setOutputModelPath(long j9, long j10, long j11, String str);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            i.l("Trying to close a closed OrtModelCompilationOptions.");
        } else {
            close(OnnxRuntime.ortCompileApiHandle, this.nativeHandle);
            this.closed = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void compileModel() {
        checkClosed();
        compileModel(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, OrtEnvironment.getEnvironment().getNativeHandle(), this.nativeHandle);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setCompilationFlags(EnumSet<OrtModelCompilationOptions$OrtCompileApiFlags> enumSet) {
        checkClosed();
        setCompilationFlags(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, OrtFlags.aggregateToInt(enumSet));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setEpContextEmbedMode(boolean z8) {
        checkClosed();
        setEpContextEmbedMode(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, z8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInputModelFromBuffer(ByteBuffer byteBuffer) {
        checkClosed();
        if (byteBuffer.isDirect()) {
            this.buffer = byteBuffer;
        } else {
            this.buffer = ByteBuffer.allocateDirect(byteBuffer.remaining());
            int iPosition = byteBuffer.position();
            this.buffer.put(byteBuffer);
            this.buffer.rewind();
            byteBuffer.position(iPosition);
        }
        setInputModelFromBuffer(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, this.buffer, this.buffer.position(), this.buffer.remaining());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setInputModelPath(String str) {
        checkClosed();
        setInputModelPath(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOutputExternalInitializersPath(String str, long j9) {
        checkClosed();
        setOutputExternalInitializersPath(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, str, j9);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void setOutputModelPath(String str) {
        checkClosed();
        setOutputModelPath(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, str);
    }
}
