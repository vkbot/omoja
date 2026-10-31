package org.apache.commons.net.telnet;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
final class TelnetOutputStream extends OutputStream {
    private static final boolean CONVERT_TO_CRLF = true;
    private final TelnetClient client;
    private boolean lastWasCR;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public TelnetOutputStream(TelnetClient telnetClient) {
        this.client = telnetClient;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.client.closeOutputStream();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.client.flushOutputStream();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream
    public void write(int i) {
        synchronized (this.client) {
            int i2 = i & 255;
            if (this.client.requestedWont(0)) {
                if (this.lastWasCR) {
                    this.client.sendByte(10);
                    if (i2 == 10) {
                        this.lastWasCR = false;
                        return;
                    }
                }
                if (i2 == 10) {
                    if (!this.lastWasCR) {
                        this.client.sendByte(13);
                    }
                    this.client.sendByte(i2);
                    this.lastWasCR = false;
                } else if (i2 != 13) {
                    TelnetClient telnetClient = this.client;
                    if (i2 != 255) {
                        telnetClient.sendByte(i2);
                        this.lastWasCR = false;
                    } else {
                        telnetClient.sendByte(255);
                        this.client.sendByte(255);
                        this.lastWasCR = false;
                    }
                } else {
                    this.client.sendByte(13);
                    this.lastWasCR = CONVERT_TO_CRLF;
                }
            } else {
                TelnetClient telnetClient2 = this.client;
                if (i2 == 255) {
                    telnetClient2.sendByte(i2);
                    this.client.sendByte(255);
                } else {
                    telnetClient2.sendByte(i2);
                }
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        synchronized (this.client) {
            while (true) {
                int i3 = i2 - 1;
                if (i2 > 0) {
                    int i4 = i + 1;
                    try {
                        write(bArr[i]);
                        i = i4;
                        i2 = i3;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                throw th;
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }
}
