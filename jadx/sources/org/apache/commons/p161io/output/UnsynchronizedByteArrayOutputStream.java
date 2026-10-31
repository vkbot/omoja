package org.apache.commons.p161io.output;

import ai.onnxruntime.AbstractC0074a;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.function.IOSupplier;
import org.apache.commons.p161io.function.Uncheck;
import org.apache.commons.p161io.input.UnsynchronizedByteArrayInputStream;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class UnsynchronizedByteArrayOutputStream extends AbstractByteArrayOutputStream<UnsynchronizedByteArrayOutputStream> {

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<UnsynchronizedByteArrayOutputStream, Builder> {
        @Override // org.apache.commons.p161io.function.IOSupplier
        public UnsynchronizedByteArrayOutputStream get() {
            return new UnsynchronizedByteArrayOutputStream(this);
        }
    }

    @Deprecated
    public UnsynchronizedByteArrayOutputStream(int i10) {
        if (i10 >= 0) {
            needNewBuffer(i10);
        } else {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Negative initial size: "));
            throw null;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ UnsynchronizedByteArrayInputStream lambda$toInputStream$0(byte[] bArr, int i10, int i11) {
        return UnsynchronizedByteArrayInputStream.builder().setByteArray(bArr).setOffset(i10).setLength(i11).get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ UnsynchronizedByteArrayInputStream lambda$toInputStream$1(final byte[] bArr, final int i10, final int i11) {
        return (UnsynchronizedByteArrayInputStream) Uncheck.get(new IOSupplier() { // from class: org.apache.commons.io.output.h
            @Override // org.apache.commons.p161io.function.IOSupplier
            public final Object get() {
                return UnsynchronizedByteArrayOutputStream.lambda$toInputStream$0(bArr, i10, i11);
            }
        });
    }

    public static InputStream toBufferedInputStream(InputStream inputStream, int i10) {
        UnsynchronizedByteArrayOutputStream unsynchronizedByteArrayOutputStream = builder().setBufferSize(i10).get();
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

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public void reset() {
        resetImpl();
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public int size() {
        return this.count;
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public byte[] toByteArray() {
        return toByteArrayImpl();
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public InputStream toInputStream() {
        return toInputStream(new C2467b(28));
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        if (i11 == 0) {
            return;
        }
        writeImpl(bArr, i10, i11);
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public void writeTo(OutputStream outputStream) {
        writeToImpl(outputStream);
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public int write(InputStream inputStream) {
        return writeImpl(inputStream);
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public void write(int i10) {
        writeImpl(i10);
    }

    @Deprecated
    public UnsynchronizedByteArrayOutputStream() {
        this(1024);
    }

    private UnsynchronizedByteArrayOutputStream(Builder builder) {
        this(builder.getBufferSize());
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) {
        return toBufferedInputStream(inputStream, 1024);
    }
}
