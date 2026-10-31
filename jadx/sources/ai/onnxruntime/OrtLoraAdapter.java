package ai.onnxruntime;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class OrtLoraAdapter implements AutoCloseable {
    private boolean closed = false;
    private final long nativeHandle;

    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            C0075b.m190o("Failed to load onnx-runtime library", e);
        }
    }

    private OrtLoraAdapter(long j10) {
        this.nativeHandle = j10;
    }

    private static native void close(long j10, long j11);

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

    private static native long createLoraAdapter(long j10, String str, long j11);

    private static native long createLoraAdapterFromArray(long j10, byte[] bArr, long j11);

    private static native long createLoraAdapterFromBuffer(long j10, ByteBuffer byteBuffer, int i10, int i11, long j11);

    public void checkClosed() {
        if (this.closed) {
            C1929i.m3030l("Trying to use a closed OrtLoraAdapter");
        }
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            C1929i.m3030l("Trying to close an already closed OrtLoraAdapter");
        } else {
            close(OnnxRuntime.ortApiHandle, this.nativeHandle);
            this.closed = true;
        }
    }

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
