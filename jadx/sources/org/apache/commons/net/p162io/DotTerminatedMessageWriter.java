package org.apache.commons.net.p162io;

import java.io.Writer;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class DotTerminatedMessageWriter extends Writer {
    private static final int LAST_WAS_CR_STATE = 1;
    private static final int LAST_WAS_NL_STATE = 2;
    private static final int NOTHING_SPECIAL_STATE = 0;
    private Writer output;
    private int state;

    public DotTerminatedMessageWriter(Writer writer) {
        super(writer);
        this.output = writer;
        this.state = 0;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (((Writer) this).lock) {
            try {
                Writer writer = this.output;
                if (writer == null) {
                    return;
                }
                int i10 = this.state;
                if (i10 == 1) {
                    writer.write(10);
                } else if (i10 != 2) {
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

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        synchronized (((Writer) this).lock) {
            this.output.flush();
        }
    }

    @Override // java.io.Writer
    public void write(int i10) {
        synchronized (((Writer) this).lock) {
            try {
                if (i10 == 10) {
                    if (this.state != 1) {
                        this.output.write(13);
                    }
                    this.output.write(10);
                    this.state = 2;
                    return;
                }
                if (i10 == 13) {
                    this.state = 1;
                    this.output.write(13);
                    return;
                }
                if (i10 == 46 && this.state == 2) {
                    this.output.write(46);
                }
                this.state = 0;
                this.output.write(i10);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i10, int i11) {
        synchronized (((Writer) this).lock) {
            while (true) {
                int i12 = i11 - 1;
                if (i11 > 0) {
                    int i13 = i10 + 1;
                    try {
                        write(cArr[i10]);
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

    @Override // java.io.Writer
    public void write(char[] cArr) {
        write(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public void write(String str) {
        write(str.toCharArray());
    }

    @Override // java.io.Writer
    public void write(String str, int i10, int i11) {
        write(str.toCharArray(), i10, i11);
    }
}
