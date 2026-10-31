package org.apache.commons.net.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class ToNetASCIIInputStream extends FilterInputStream {
    private static final int LAST_WAS_CR = 1;
    private static final int LAST_WAS_NL = 2;
    private static final int NOTHING_SPECIAL = 0;
    private int status;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public ToNetASCIIInputStream(InputStream inputStream) {
        super(inputStream);
        this.status = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int iAvailable = ((FilterInputStream) this).in.available();
        return this.status == 2 ? iAvailable + 1 : iAvailable;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (i2 < 1) {
            return 0;
        }
        int iAvailable = available();
        if (i2 > iAvailable) {
            i2 = iAvailable;
        }
        int i4 = i2 >= 1 ? i2 : 1;
        int i5 = read();
        if (i5 == -1) {
            return -1;
        }
        int i6 = i;
        while (true) {
            i3 = i6 + 1;
            bArr[i6] = (byte) i5;
            i4--;
            if (i4 <= 0 || (i5 = read()) == -1) {
                break;
            }
            i6 = i3;
        }
        return i3 - i;
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
        int i = ((FilterInputStream) this).in.read();
        if (i != 10) {
            if (i == 13) {
                this.status = 1;
                return 13;
            }
        } else if (this.status != 1) {
            this.status = 2;
            return 13;
        }
        this.status = 0;
        return i;
    }
}
