package org.apache.commons.net.io;

import java.io.Writer;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class DotTerminatedMessageWriter extends Writer {
    private static final int LAST_WAS_CR_STATE = 1;
    private static final int LAST_WAS_NL_STATE = 2;
    private static final int NOTHING_SPECIAL_STATE = 0;
    private Writer output;
    private int state;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DotTerminatedMessageWriter(Writer writer) {
        super(writer);
        this.output = writer;
        this.state = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (((Writer) this).lock) {
            try {
                Writer writer = this.output;
                if (writer == null) {
                    return;
                }
                int i = this.state;
                if (i == 1) {
                    writer.write(10);
                } else if (i != 2) {
                    writer.write(SocketClient.NETASCII_EOL);
                }
                this.output.write(".\r\n");
                this.output.flush();
                this.output = null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        synchronized (((Writer) this).lock) {
            this.output.flush();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Writer
    public void write(int i) {
        synchronized (((Writer) this).lock) {
            try {
                if (i == 10) {
                    if (this.state != 1) {
                        this.output.write(13);
                    }
                    this.output.write(10);
                    this.state = 2;
                    return;
                }
                if (i == 13) {
                    this.state = 1;
                    this.output.write(13);
                    return;
                }
                if (i == 46 && this.state == 2) {
                    this.output.write(46);
                }
                this.state = 0;
                this.output.write(i);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) {
        synchronized (((Writer) this).lock) {
            while (true) {
                int i3 = i2 - 1;
                if (i2 > 0) {
                    int i4 = i + 1;
                    try {
                        write(cArr[i]);
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

    @Override // java.io.Writer
    public void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public void write(String str) {
        write(str.toCharArray());
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) {
        write(str.toCharArray(), i, i2);
    }
}
