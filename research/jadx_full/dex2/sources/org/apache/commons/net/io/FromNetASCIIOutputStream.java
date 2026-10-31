package org.apache.commons.net.io;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class FromNetASCIIOutputStream extends FilterOutputStream {
    private boolean lastWasCR;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FromNetASCIIOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void writeInt(int i) throws IOException {
        if (i != 10) {
            if (i == 13) {
                this.lastWasCR = true;
                return;
            }
            if (this.lastWasCR) {
                ((FilterOutputStream) this).out.write(13);
                this.lastWasCR = false;
            }
            ((FilterOutputStream) this).out.write(i);
            return;
        }
        boolean z = this.lastWasCR;
        OutputStream outputStream = ((FilterOutputStream) this).out;
        if (!z) {
            outputStream.write(10);
        } else {
            outputStream.write(FromNetASCIIInputStream.LINE_SEPARATOR_BYTES);
            this.lastWasCR = false;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        if (FromNetASCIIInputStream.NO_CONVERSION_REQUIRED) {
            ((FilterOutputStream) this).out.write(bArr, i, i2);
            return;
        }
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            int i4 = i + 1;
            writeInt(bArr[i]);
            i = i4;
            i2 = i3;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        if (FromNetASCIIInputStream.NO_CONVERSION_REQUIRED) {
            ((FilterOutputStream) this).out.write(i);
        } else {
            writeInt(i);
        }
    }
}
