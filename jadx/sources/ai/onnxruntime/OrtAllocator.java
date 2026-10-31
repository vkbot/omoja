package ai.onnxruntime;

import java.io.IOException;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
class OrtAllocator implements AutoCloseable {
    private boolean closed = false;
    final long handle;
    private final boolean isDefault;

    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            C0075b.m190o("Failed to load onnx-runtime library", e);
        }
    }

    public OrtAllocator(long j10, boolean z9) {
        this.handle = j10;
        this.isDefault = z9;
    }

    private native void closeAllocator(long j10, long j11);

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            C1929i.m3030l("Trying to close an already closed OrtAllocator.");
        } else {
            if (this.isDefault) {
                return;
            }
            closeAllocator(OnnxRuntime.ortApiHandle, this.handle);
            this.closed = true;
        }
    }

    public boolean isClosed() {
        return this.closed;
    }

    public boolean isDefault() {
        return this.isDefault;
    }
}
