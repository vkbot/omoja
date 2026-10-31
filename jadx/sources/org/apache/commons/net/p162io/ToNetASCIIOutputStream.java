package org.apache.commons.net.p162io;

import java.io.FilterOutputStream;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class ToNetASCIIOutputStream extends FilterOutputStream {
    private boolean lastWasCR;

    public ToNetASCIIOutputStream(OutputStream outputStream) {
        super(outputStream);
        this.lastWasCR = false;
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(int i10) {
        try {
            if (i10 != 10) {
                if (i10 == 13) {
                    this.lastWasCR = true;
                    ((FilterOutputStream) this).out.write(13);
                    return;
                }
            } else if (!this.lastWasCR) {
                ((FilterOutputStream) this).out.write(13);
            }
            this.lastWasCR = false;
            ((FilterOutputStream) this).out.write(i10);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr, int i10, int i11) {
        while (true) {
            int i12 = i11 - 1;
            if (i11 > 0) {
                int i13 = i10 + 1;
                write(bArr[i10]);
                i10 = i13;
                i11 = i12;
            }
        }
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public synchronized void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }
}
