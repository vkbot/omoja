package org.apache.commons.io.output;

import j1.i;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.function.Uncheck;
import org.apache.commons.io.input.UnsynchronizedByteArrayInputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class UnsynchronizedByteArrayOutputStream extends AbstractByteArrayOutputStream<UnsynchronizedByteArrayOutputStream> {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public UnsynchronizedByteArrayOutputStream(int i) {
        if (i >= 0) {
            needNewBuffer(i);
        } else {
            i.k(ai.onnxruntime.a.e(i, "Negative initial size: "));
            throw null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ UnsynchronizedByteArrayInputStream b(byte[] bArr, int i, int i2) {
        return lambda$toInputStream$1(bArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UnsynchronizedByteArrayOutputStream$Builder builder() {
        return new UnsynchronizedByteArrayOutputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ UnsynchronizedByteArrayInputStream c(byte[] bArr, int i, int i2) {
        return lambda$toInputStream$0(bArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ UnsynchronizedByteArrayInputStream lambda$toInputStream$0(byte[] bArr, int i, int i2) {
        return UnsynchronizedByteArrayInputStream.builder().setByteArray(bArr).setOffset(i).setLength(i2).get();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ UnsynchronizedByteArrayInputStream lambda$toInputStream$1(byte[] bArr, int i, int i2) {
        return (UnsynchronizedByteArrayInputStream) Uncheck.get(new h(bArr, i, i2));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static InputStream toBufferedInputStream(InputStream inputStream, int i) {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = builder().setBufferSize(i).get();
        try {
            unsynchronizedByteArrayOutputStream.write(inputStream);
            InputStream inputStream2 = unsynchronizedByteArrayOutputStream.toInputStream();
            unsynchronizedByteArrayOutputStream.close();
            return inputStream2;
        } catch (Throwable th) {
            if (unsynchronizedByteArrayOutputStream != null) {
                try {
                    unsynchronizedByteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream
    public void reset() {
        resetImpl();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream
    public int size() {
        return this.count;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream
    public byte[] toByteArray() {
        return toByteArrayImpl();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream
    public InputStream toInputStream() {
        return toInputStream(new n0.b(28));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        if (i2 == 0) {
            return;
        }
        writeImpl(bArr, i, i2);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream
    public void writeTo(OutputStream outputStream) throws IOException {
        writeToImpl(outputStream);
    }

    @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream
    public int write(InputStream inputStream) {
        return writeImpl(inputStream);
    }

    @Override // org.apache.commons.io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public void write(int i) {
        writeImpl(i);
    }

    @Deprecated
    public UnsynchronizedByteArrayOutputStream() {
        this(1024);
    }

    private UnsynchronizedByteArrayOutputStream(UnsynchronizedByteArrayOutputStream$Builder unsynchronizedByteArrayOutputStream$Builder) {
        this(unsynchronizedByteArrayOutputStream$Builder.getBufferSize());
    }

    public /* synthetic */ UnsynchronizedByteArrayOutputStream(UnsynchronizedByteArrayOutputStream$Builder unsynchronizedByteArrayOutputStream$Builder, UnsynchronizedByteArrayOutputStream$1 unsynchronizedByteArrayOutputStream$1) {
        this(unsynchronizedByteArrayOutputStream$Builder);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) {
        return toBufferedInputStream(inputStream, 1024);
    }
}
