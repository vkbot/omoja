package org.apache.commons.net.io;

import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.nio.charset.StandardCharsets;
import n0.b;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class FromNetASCIIInputStream extends PushbackInputStream {
    private int length;
    static final boolean NO_CONVERSION_REQUIRED = System.lineSeparator().equals(SocketClient.NETASCII_EOL);
    static final byte[] LINE_SEPARATOR_BYTES = System.lineSeparator().getBytes(StandardCharsets.US_ASCII);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FromNetASCIIInputStream(InputStream inputStream) {
        super(inputStream, LINE_SEPARATOR_BYTES.length + 1);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isConversionRequired() {
        return !NO_CONVERSION_REQUIRED;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int readInt() throws IOException {
        int i = super.read();
        if (i != 13) {
            return i;
        }
        int i2 = super.read();
        if (i2 != 10) {
            if (i2 != -1) {
                unread(i2);
            }
            return 13;
        }
        unread(LINE_SEPARATOR_BYTES);
        int i3 = super.read();
        this.length--;
        return i3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() {
        if (((PushbackInputStream) this).in != null) {
            return ((PushbackInputStream) this).in.available() + (((PushbackInputStream) this).buf.length - ((PushbackInputStream) this).pos);
        }
        b.A("Stream closed");
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        if (NO_CONVERSION_REQUIRED) {
            return super.read(bArr, i, i2);
        }
        if (i2 < 1) {
            return 0;
        }
        int iMin = Math.min(i2, available());
        this.length = iMin;
        if (iMin < 1) {
            this.length = 1;
        }
        int i4 = readInt();
        if (i4 == -1) {
            return -1;
        }
        int i5 = i;
        while (true) {
            i3 = i5 + 1;
            bArr[i5] = (byte) i4;
            int i6 = this.length - 1;
            this.length = i6;
            if (i6 <= 0 || (i4 = readInt()) == -1) {
                break;
            }
            i5 = i3;
        }
        return i3 - i;
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
