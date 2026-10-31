package ai.onnxruntime;

import j1.i;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class OnnxSequence implements OnnxValue {
    private static final Logger logger = Logger.getLogger(OnnxSequence.class.getName());
    private final long allocatorHandle;
    private boolean closed = false;
    private final SequenceInfo info;
    final long nativeHandle;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        try {
            OnnxRuntime.init();
        } catch (IOException e) {
            b.o("Failed to load onnx-runtime library", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public OnnxSequence(long j9, long j10, SequenceInfo sequenceInfo) {
        this.nativeHandle = j9;
        this.allocatorHandle = j10;
        this.info = sequenceInfo;
    }

    private native void close(long j9, long j10);

    private native OnnxMap[] getMaps(long j9, long j10, long j11);

    private native OnnxTensor[] getTensors(long j9, long j10, long j11);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void checkClosed() {
        if (this.closed) {
            i.l("Trying to use a closed OnnxValue");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            if (this.closed) {
                logger.warning("Closing an already closed sequence.");
            } else {
                close(OnnxRuntime.ortApiHandle, this.nativeHandle);
                this.closed = true;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public /* bridge */ /* synthetic */ ValueInfo getInfo() {
        return getInfo();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public OnnxValue$OnnxValueType getType() {
        return OnnxValue$OnnxValueType.ONNX_TYPE_SEQUENCE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public List<? extends OnnxValue> getValue() throws OrtException {
        checkClosed();
        SequenceInfo sequenceInfo = this.info;
        if (sequenceInfo.sequenceOfMaps) {
            return Collections.unmodifiableList(Arrays.asList(getMaps(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle)));
        }
        int i9 = OnnxSequence$1.$SwitchMap$ai$onnxruntime$OnnxJavaType[sequenceInfo.sequenceType.ordinal()];
        if (i9 == 1 || i9 == 2 || i9 == 3 || i9 == 4) {
            return Collections.unmodifiableList(Arrays.asList(getTensors(OnnxRuntime.ortApiHandle, this.nativeHandle, this.allocatorHandle)));
        }
        throw new OrtException("Unsupported type in a sequence, found " + this.info.sequenceType);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // ai.onnxruntime.OnnxValue
    public synchronized boolean isClosed() {
        return this.closed;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return "OnnxSequence(info=" + this.info.toString() + ")";
    }

    @Override // ai.onnxruntime.OnnxValue
    public SequenceInfo getInfo() {
        return this.info;
    }

    @Override // ai.onnxruntime.OnnxValue
    public /* bridge */ /* synthetic */ Object getValue() {
        return getValue();
    }
}
