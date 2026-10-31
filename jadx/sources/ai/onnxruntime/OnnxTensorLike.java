package ai.onnxruntime;

import java.io.IOException;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class OnnxTensorLike implements OnnxValue {
    protected final long allocatorHandle;
    protected boolean closed = false;
    protected final TensorInfo info;
    protected final long nativeHandle;

    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            C0075b.m190o("Failed to load onnx-runtime library", e);
        }
    }

    public OnnxTensorLike(long j10, long j11, TensorInfo tensorInfo) {
        this.nativeHandle = j10;
        this.allocatorHandle = j11;
        this.info = tensorInfo;
    }

    public void checkClosed() {
        if (this.closed) {
            C1929i.m3030l("Trying to use a closed OnnxValue");
        }
    }

    public long getNativeHandle() {
        return this.nativeHandle;
    }

    @Override // ai.onnxruntime.OnnxValue
    public synchronized boolean isClosed() {
        return this.closed;
    }

    @Override // ai.onnxruntime.OnnxValue
    public TensorInfo getInfo() {
        return this.info;
    }
}
