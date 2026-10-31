package org.apache.commons.net.p162io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class ToNetASCIIInputStream extends FilterInputStream {
    private static final int LAST_WAS_CR = 1;
    private static final int LAST_WAS_NL = 2;
    private static final int NOTHING_SPECIAL = 0;
    private int status;

    public ToNetASCIIInputStream(InputStream inputStream) {
        super(inputStream);
        this.status = 0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int iAvailable = ((FilterInputStream) this).in.available();
        return this.status == 2 ? iAvailable + 1 : iAvailable;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (i11 < 1) {
            return 0;
        }
        int iAvailable = available();
        if (i11 > iAvailable) {
            i11 = iAvailable;
        }
        int i13 = i11 >= 1 ? i11 : 1;
        int i14 = read();
        if (i14 == -1) {
            return -1;
        }
        int i15 = i10;
        while (true) {
            i12 = i15 + 1;
            bArr[i15] = (byte) i14;
            i13--;
            if (i13 <= 0 || (i14 = read()) == -1) {
                break;
            }
            i15 = i12;
        }
        return i12 - i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.status == 2) {
            this.status = 0;
            return 10;
        }
        int i10 = ((FilterInputStream) this).in.read();
        if (i10 != 10) {
            if (i10 == 13) {
                this.status = 1;
                return 13;
            }
        } else if (this.status != 1) {
            this.status = 2;
            return 13;
        }
        this.status = 0;
        return i10;
    }
}
