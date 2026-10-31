package org.apache.commons.p161io.output;

import java.io.IOException;
import java.io.OutputStream;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.function.IOConsumer;
import org.apache.commons.p161io.function.IOFunction;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ThresholdingOutputStream extends OutputStream {
    private static final IOFunction<ThresholdingOutputStream, OutputStream> NOOP_OS_GETTER = new C2467b(27);
    private final IOFunction<ThresholdingOutputStream, OutputStream> outputStreamGetter;
    private final int threshold;
    private final IOConsumer<ThresholdingOutputStream> thresholdConsumer;
    private boolean thresholdExceeded;
    private long written;

    public ThresholdingOutputStream(int i10, IOConsumer<ThresholdingOutputStream> iOConsumer, IOFunction<ThresholdingOutputStream, OutputStream> iOFunction) {
        this.threshold = i10 < 0 ? 0 : i10;
        this.thresholdConsumer = iOConsumer == null ? IOConsumer.noop() : iOConsumer;
        this.outputStreamGetter = iOFunction == null ? NOOP_OS_GETTER : iOFunction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ OutputStream lambda$static$0(ThresholdingOutputStream thresholdingOutputStream) {
        return NullOutputStream.INSTANCE;
    }

    public void checkThreshold(int i10) {
        if (this.thresholdExceeded || this.written + ((long) i10) <= this.threshold) {
            return;
        }
        this.thresholdExceeded = true;
        thresholdReached();
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            flush();
        } catch (IOException unused) {
        }
        getStream().close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        getStream().flush();
    }

    public long getByteCount() {
        return this.written;
    }

    public OutputStream getOutputStream() {
        return this.outputStreamGetter.apply(this);
    }

    @Deprecated
    public OutputStream getStream() {
        return getOutputStream();
    }

    public int getThreshold() {
        return this.threshold;
    }

    public boolean isThresholdExceeded() {
        return this.written > ((long) this.threshold);
    }

    public void resetByteCount() {
        this.thresholdExceeded = false;
        this.written = 0L;
    }

    public void setByteCount(long j10) {
        this.written = j10;
    }

    public void thresholdReached() {
        this.thresholdConsumer.accept(this);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        checkThreshold(i11);
        getStream().write(bArr, i10, i11);
        this.written += (long) i11;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        checkThreshold(bArr.length);
        getStream().write(bArr);
        this.written += (long) bArr.length;
    }

    public ThresholdingOutputStream(int i10) {
        this(i10, IOConsumer.noop(), NOOP_OS_GETTER);
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        checkThreshold(1);
        getStream().write(i10);
        this.written++;
    }
}
