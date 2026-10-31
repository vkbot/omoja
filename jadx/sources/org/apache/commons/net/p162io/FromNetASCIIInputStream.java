package org.apache.commons.net.p162io;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.nio.charset.StandardCharsets;
import org.apache.commons.net.SocketClient;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class FromNetASCIIInputStream extends PushbackInputStream {
    private int length;
    static final boolean NO_CONVERSION_REQUIRED = System.lineSeparator().equals(SocketClient.NETASCII_EOL);
    static final byte[] LINE_SEPARATOR_BYTES = System.lineSeparator().getBytes(StandardCharsets.US_ASCII);

    public FromNetASCIIInputStream(InputStream inputStream) {
        super(inputStream, LINE_SEPARATOR_BYTES.length + 1);
    }

    public static boolean isConversionRequired() {
        return !NO_CONVERSION_REQUIRED;
    }

    private int readInt() throws IOException {
        int i10 = super.read();
        if (i10 != 13) {
            return i10;
        }
        int i11 = super.read();
        if (i11 != 10) {
            if (i11 != -1) {
                unread(i11);
            }
            return 13;
        }
        unread(LINE_SEPARATOR_BYTES);
        int i12 = super.read();
        this.length--;
        return i12;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        if (((PushbackInputStream) this).in != null) {
            return ((PushbackInputStream) this).in.available() + (((PushbackInputStream) this).buf.length - ((PushbackInputStream) this).pos);
        }
        C2467b.m3820A("Stream closed");
        return 0;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        if (NO_CONVERSION_REQUIRED) {
            return super.read(bArr, i10, i11);
        }
        if (i11 < 1) {
            return 0;
        }
        int iMin = Math.min(i11, available());
        this.length = iMin;
        if (iMin < 1) {
            this.length = 1;
        }
        int i13 = readInt();
        if (i13 == -1) {
            return -1;
        }
        int i14 = i10;
        while (true) {
            i12 = i14 + 1;
            bArr[i14] = (byte) i13;
            int i15 = this.length - 1;
            this.length = i15;
            if (i15 <= 0 || (i13 = readInt()) == -1) {
                break;
            }
            i14 = i12;
        }
        return i12 - i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (NO_CONVERSION_REQUIRED) {
            return super.read();
        }
        return readInt();
    }
}
