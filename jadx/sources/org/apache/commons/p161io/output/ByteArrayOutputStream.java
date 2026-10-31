package org.apache.commons.p161io.output;

import ai.onnxruntime.AbstractC0074a;
import java.io.InputStream;
import java.io.OutputStream;
import org.apache.commons.p161io.IOUtils;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ByteArrayOutputStream extends AbstractByteArrayOutputStream<ByteArrayOutputStream> {
    public ByteArrayOutputStream(int i10) {
        if (i10 < 0) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Negative initial size: "));
            throw null;
        }
        synchronized (this) {
            needNewBuffer(i10);
        }
    }

    public static InputStream toBufferedInputStream(InputStream inputStream, int i10) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i10);
        try {
            byteArrayOutputStream.write(inputStream);
            InputStream inputStream2 = byteArrayOutputStream.toInputStream();
            byteArrayOutputStream.close();
            return inputStream2;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public synchronized void reset() {
        resetImpl();
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public synchronized int size() {
        return this.count;
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public synchronized byte[] toByteArray() {
        return toByteArrayImpl();
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public synchronized InputStream toInputStream() {
        return toInputStream(new C2467b(26));
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        if (i11 == 0) {
            return;
        }
        synchronized (this) {
            writeImpl(bArr, i10, i11);
        }
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public synchronized void writeTo(OutputStream outputStream) {
        writeToImpl(outputStream);
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream
    public synchronized int write(InputStream inputStream) {
        return writeImpl(inputStream);
    }

    @Override // org.apache.commons.p161io.output.AbstractByteArrayOutputStream, java.io.OutputStream
    public synchronized void write(int i10) {
        writeImpl(i10);
    }

    public ByteArrayOutputStream() {
        this(1024);
    }

    public static InputStream toBufferedInputStream(InputStream inputStream) {
        return toBufferedInputStream(inputStream, 1024);
    }
}
