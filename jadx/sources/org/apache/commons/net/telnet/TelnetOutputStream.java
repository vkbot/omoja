package org.apache.commons.net.telnet;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
final class TelnetOutputStream extends OutputStream {
    private static final boolean CONVERT_TO_CRLF = true;
    private final TelnetClient client;
    private boolean lastWasCR;

    public TelnetOutputStream(TelnetClient telnetClient) {
        this.client = telnetClient;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.client.closeOutputStream();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.client.flushOutputStream();
    }

    @Override // java.io.OutputStream
    public void write(int i10) {
        synchronized (this.client) {
            int i11 = i10 & 255;
            if (this.client.requestedWont(0)) {
                if (this.lastWasCR) {
                    this.client.sendByte(10);
                    if (i11 == 10) {
                        this.lastWasCR = false;
                        return;
                    }
                }
                if (i11 == 10) {
                    if (!this.lastWasCR) {
                        this.client.sendByte(13);
                    }
                    this.client.sendByte(i11);
                    this.lastWasCR = false;
                } else if (i11 != 13) {
                    TelnetClient telnetClient = this.client;
                    if (i11 != 255) {
                        telnetClient.sendByte(i11);
                        this.lastWasCR = false;
                    } else {
                        telnetClient.sendByte(255);
                        this.client.sendByte(255);
                        this.lastWasCR = false;
                    }
                } else {
                    this.client.sendByte(13);
                    this.lastWasCR = true;
                }
            } else {
                TelnetClient telnetClient2 = this.client;
                if (i11 == 255) {
                    telnetClient2.sendByte(i11);
                    this.client.sendByte(255);
                } else {
                    telnetClient2.sendByte(i11);
                }
            }
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) {
        synchronized (this.client) {
            while (true) {
                int i12 = i11 - 1;
                if (i11 > 0) {
                    int i13 = i10 + 1;
                    try {
                        write(bArr[i10]);
                        i10 = i13;
                        i11 = i12;
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
