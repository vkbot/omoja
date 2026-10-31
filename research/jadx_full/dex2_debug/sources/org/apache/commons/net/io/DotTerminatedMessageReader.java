package org.apache.commons.net.io;

import java.io.BufferedReader;
import java.io.Reader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class DotTerminatedMessageReader extends BufferedReader {
    private static final char CR = '\r';
    private static final int DOT = 46;
    private static final char LF = '\n';
    private boolean atBeginning;
    private boolean eof;
    private boolean seenCR;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DotTerminatedMessageReader(Reader reader) {
        super(reader);
        this.atBeginning = true;
        this.eof = false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (((BufferedReader) this).lock) {
            try {
                if (!this.eof) {
                    while (read() != -1) {
                    }
                }
                this.eof = true;
                this.atBeginning = false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader, java.io.Reader
    public int read() {
        synchronized (((BufferedReader) this).lock) {
            try {
                if (this.eof) {
                    return -1;
                }
                int i = super.read();
                if (i == -1) {
                    this.eof = true;
                    return -1;
                }
                if (this.atBeginning) {
                    this.atBeginning = false;
                    if (i == DOT) {
                        mark(2);
                        int i2 = super.read();
                        if (i2 == -1) {
                            this.eof = true;
                            return DOT;
                        }
                        if (i2 == 13) {
                            int i3 = super.read();
                            if (i3 == -1) {
                                reset();
                                return DOT;
                            }
                            if (i3 == 10) {
                                this.atBeginning = true;
                                this.eof = true;
                                return -1;
                            }
                        } else if (i2 == DOT) {
                            return i2;
                        }
                        reset();
                        return DOT;
                    }
                }
                if (this.seenCR) {
                    this.seenCR = false;
                    if (i == 10) {
                        this.atBeginning = true;
                    }
                }
                if (i == 13) {
                    this.seenCR = true;
                }
                return i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.BufferedReader
    public String readLine() {
        StringBuilder sb = new StringBuilder();
        synchronized (((BufferedReader) this).lock) {
            while (true) {
                try {
                    int i = read();
                    if (i == -1) {
                        String string = sb.toString();
                        if (string.isEmpty()) {
                            return null;
                        }
                        return string;
                    }
                    if (i == 10 && this.atBeginning) {
                        return sb.substring(0, sb.length() - 1);
                    }
                    sb.append((char) i);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr) {
        return read(cArr, 0, cArr.length);
    }

    @Override // java.io.BufferedReader, java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        int i3;
        if (i2 < 1) {
            return 0;
        }
        synchronized (((BufferedReader) this).lock) {
            try {
                int i4 = read();
                if (i4 == -1) {
                    return -1;
                }
                int i5 = i;
                while (true) {
                    i3 = i5 + 1;
                    cArr[i5] = (char) i4;
                    i2--;
                    if (i2 <= 0 || (i4 = read()) == -1) {
                        break;
                        break;
                    }
                    i5 = i3;
                }
                return i3 - i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
