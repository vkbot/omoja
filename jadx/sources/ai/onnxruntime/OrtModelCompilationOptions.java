package ai.onnxruntime;

import java.nio.ByteBuffer;
import java.util.EnumSet;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class OrtModelCompilationOptions implements AutoCloseable {
    private ByteBuffer buffer;
    private boolean closed = false;
    private final long nativeHandle;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public enum OrtCompileApiFlags implements OrtFlags {
        NONE(0),
        ERROR_IF_NO_NODES_COMPILED(1),
        ERROR_IF_OUTPUT_FILE_EXISTS(2);

        public final int value;

        OrtCompileApiFlags(int i10) {
            this.value = i10;
        }

        @Override // ai.onnxruntime.OrtFlags
        public int getValue() {
            return this.value;
        }
    }

    public OrtModelCompilationOptions(long j10) {
        this.nativeHandle = j10;
    }

    private void checkClosed() {
        if (this.closed) {
            C1929i.m3030l("Trying to use a closed OrtModelCompilationOptions.");
        }
    }

    private static native void close(long j10, long j11);

    private static native void compileModel(long j10, long j11, long j12, long j13);

    private static native long createFromSessionOptions(long j10, long j11, long j12, long j13);

    public static OrtModelCompilationOptions createFromSessionOptions(OrtEnvironment ortEnvironment, OrtSession.SessionOptions sessionOptions) {
        return new OrtModelCompilationOptions(createFromSessionOptions(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, ortEnvironment.getNativeHandle(), sessionOptions.getNativeHandle()));
    }

    private static native void setCompilationFlags(long j10, long j11, long j12, int i10);

    private static native void setEpContextEmbedMode(long j10, long j11, long j12, boolean z9);

    private static native void setInputModelFromBuffer(long j10, long j11, long j12, ByteBuffer byteBuffer, long j13, long j14);

    private static native void setInputModelPath(long j10, long j11, long j12, String str);

    private static native void setOutputExternalInitializersPath(long j10, long j11, long j12, String str, long j13);

    private static native void setOutputModelPath(long j10, long j11, long j12, String str);

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            C1929i.m3030l("Trying to close a closed OrtModelCompilationOptions.");
        } else {
            close(OnnxRuntime.ortCompileApiHandle, this.nativeHandle);
            this.closed = true;
        }
    }

    public void compileModel() {
        checkClosed();
        compileModel(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, OrtEnvironment.getEnvironment().getNativeHandle(), this.nativeHandle);
    }

    public void setCompilationFlags(EnumSet<OrtCompileApiFlags> enumSet) {
        checkClosed();
        setCompilationFlags(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, OrtFlags.aggregateToInt(enumSet));
    }

    public void setEpContextEmbedMode(boolean z9) {
        checkClosed();
        setEpContextEmbedMode(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, z9);
    }

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

    public void setInputModelPath(String str) {
        checkClosed();
        setInputModelPath(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, str);
    }

    public void setOutputExternalInitializersPath(String str, long j10) {
        checkClosed();
        setOutputExternalInitializersPath(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, str, j10);
    }

    public void setOutputModelPath(String str) {
        checkClosed();
        setOutputModelPath(OnnxRuntime.ortApiHandle, OnnxRuntime.ortCompileApiHandle, this.nativeHandle, str);
    }
}
