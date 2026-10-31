package ai.onnxruntime;

import j1.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class OrtLoraAdapter implements AutoCloseable {
    private boolean closed = false;
    private final long nativeHandle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private OrtLoraAdapter(long j9) {
        this.nativeHandle = j9;
    }

    private static native void close(long j9, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static OrtLoraAdapter create(ByteBuffer byteBuffer, OrtAllocator ortAllocator) throws OrtException {
        Objects.requireNonNull(byteBuffer, "LoRA buffer must not be null");
        if (byteBuffer.remaining() == 0) {
            throw new OrtException("Invalid LoRA buffer, no elements remaining.");
        }
        if (byteBuffer.isDirect()) {
            return new OrtLoraAdapter(createLoraAdapterFromBuffer(OnnxRuntime.ortApiHandle, byteBuffer, byteBuffer.position(), byteBuffer.remaining(), ortAllocator == null ? 0L : ortAllocator.handle));
        }
        throw new OrtException("ByteBuffer is not direct.");
    }

    private static native long createLoraAdapter(long j9, String str, long j10);

    private static native long createLoraAdapterFromArray(long j9, byte[] bArr, long j10);

    private static native long createLoraAdapterFromBuffer(long j9, ByteBuffer byteBuffer, int i9, int i10, long j10);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed OrtLoraAdapter");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            i.l("Trying to close an already closed OrtLoraAdapter");
        } else {
            close(OnnxRuntime.ortApiHandle, this.nativeHandle);
            this.closed = true;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long getNativeHandle() {
        return this.nativeHandle;
    }

    public static OrtLoraAdapter create(byte[] bArr, OrtAllocator ortAllocator) {
        Objects.requireNonNull(bArr, "LoRA array must not be null");
        return new OrtLoraAdapter(createLoraAdapterFromArray(OnnxRuntime.ortApiHandle, bArr, ortAllocator == null ? 0L : ortAllocator.handle));
    }

    public static OrtLoraAdapter create(ByteBuffer byteBuffer) {
        return create(byteBuffer, (OrtAllocator) null);
    }

    public static OrtLoraAdapter create(byte[] bArr) {
        return create(bArr, (OrtAllocator) null);
    }

    public static OrtLoraAdapter create(String str) {
        return create(str, (OrtAllocator) null);
    }

    public static OrtLoraAdapter create(String str, OrtAllocator ortAllocator) {
        return new OrtLoraAdapter(createLoraAdapter(OnnxRuntime.ortApiHandle, str, ortAllocator == null ? 0L : ortAllocator.handle));
    }
}
