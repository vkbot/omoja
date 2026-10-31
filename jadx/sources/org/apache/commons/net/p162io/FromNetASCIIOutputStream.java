package org.apache.commons.net.p162io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class FromNetASCIIOutputStream extends FilterOutputStream {
    private boolean lastWasCR;

    public FromNetASCIIOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    private void writeInt(int i10) throws IOException {
        if (i10 != 10) {
            if (i10 == 13) {
                this.lastWasCR = true;
                return;
            }
            if (this.lastWasCR) {
                ((FilterOutputStream) this).out.write(13);
                this.lastWasCR = false;
            }
            ((FilterOutputStream) this).out.write(i10);
            return;
        }
        boolean z9 = this.lastWasCR;
        OutputStream outputStream = ((FilterOutputStream) this).out;
        if (!z9) {
            outputStream.write(10);
        } else {
            outputStream.write(FromNetASCIIInputStream.LINE_SEPARATOR_BYTES);
            this.lastWasCR = false;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        if (FromNetASCIIInputStream.NO_CONVERSION_REQUIRED) {
            super.close();
            return;
        }
        if (this.lastWasCR) {
            ((FilterOutputStream) this).out.write(13);
        }
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i10, int i11) {
        if (FromNetASCIIInputStream.NO_CONVERSION_REQUIRED) {
            ((FilterOutputStream) this).out.write(bArr, i10, i11);
            return;
        }
        while (true) {
            int i12 = i11 - 1;
            if (i11 <= 0) {
                return;
            }
            int i13 = i10 + 1;
            writeInt(bArr[i10]);
            i10 = i13;
            i11 = i12;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(int i10) {
        if (FromNetASCIIInputStream.NO_CONVERSION_REQUIRED) {
            ((FilterOutputStream) this).out.write(i10);
        } else {
            writeInt(i10);
        }
    }
}
