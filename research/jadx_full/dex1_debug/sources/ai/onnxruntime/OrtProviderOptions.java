package ai.onnxruntime;

import j1.i;
import java.io.IOException;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public abstract class OrtProviderOptions implements AutoCloseable {
    private static final Logger logger = Logger.getLogger(OrtProviderOptions.class.getName());
    protected boolean closed = false;
    protected final long nativeHandle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OrtProviderOptions(long j9) {
        this.nativeHandle = j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getApiHandle() {
        return OnnxRuntime.ortApiHandle;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long loadLibraryAndCreate(OrtProvider ortProvider, OrtProviderOptions$OrtProviderSupplier ortProviderOptions$OrtProviderSupplier) throws OrtException {
        int i9 = OrtProviderOptions$1.$SwitchMap$ai$onnxruntime$OrtProvider[ortProvider.ordinal()];
        if (i9 != 1) {
            if (i9 != 2) {
                if (i9 != 3) {
                    if (i9 != 4) {
                        if (i9 == 5 && !OnnxRuntime.extractTensorRT()) {
                            throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find TensorRT shared provider");
                        }
                    } else if (!OnnxRuntime.extractROCM()) {
                        throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find ROCm shared provider");
                    }
                } else if (!OnnxRuntime.extractOpenVINO()) {
                    throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find OpenVINO shared provider");
                }
            } else if (!OnnxRuntime.extractDNNL()) {
                throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find DNNL shared provider");
            }
        } else if (!OnnxRuntime.extractCUDA()) {
            throw new OrtException(OrtException$OrtErrorCode.ORT_EP_FAIL, "Failed to find CUDA shared provider");
        }
        return ortProviderOptions$OrtProviderSupplier.create();
    }

    public abstract void applyToNative();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed OrtProviderOptions");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.closed) {
            logger.warning("Closing an already closed tensor.");
        } else {
            close(OnnxRuntime.ortApiHandle, this.nativeHandle);
            this.closed = true;
        }
    }

    public abstract void close(long j9, long j10);

    public abstract OrtProvider getProvider();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public synchronized boolean isClosed() {
        return this.closed;
    }
}
