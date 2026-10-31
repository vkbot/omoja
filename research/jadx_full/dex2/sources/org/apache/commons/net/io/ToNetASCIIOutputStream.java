package org.apache.commons.net.io;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class ToNetASCIIOutputStream extends FilterOutputStream {
    private boolean lastWasCR;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ToNetASCIIOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.lastWasCR = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(int i) {
        try {
            if (i != 10) {
                if (i == 13) {
                    this.lastWasCR = true;
                    ((FilterOutputStream) this).out.write(13);
                    return;
                }
            } else if (!this.lastWasCR) {
                ((FilterOutputStream) this).out.write(13);
            }
            this.lastWasCR = false;
            ((FilterOutputStream) this).out.write(i);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i, int i2) {
        while (true) {
            int i3 = i2 - 1;
            if (i2 > 0) {
                int i4 = i + 1;
                write(bArr[i]);
                i = i4;
                i2 = i3;
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }
}
