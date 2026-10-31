package org.apache.commons.net.p162io;

import java.io.BufferedReader;
import java.io.Reader;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class DotTerminatedMessageReader extends BufferedReader {

    /* JADX INFO: renamed from: CR */
    private static final char f8135CR = '\r';
    private static final int DOT = 46;

    /* JADX INFO: renamed from: LF */
    private static final char f8136LF = '\n';
    private boolean atBeginning;
    private boolean eof;
    private boolean seenCR;

    public DotTerminatedMessageReader(Reader reader) {
        super(reader);
        this.atBeginning = true;
        this.eof = false;
    }

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

    @Override // java.io.BufferedReader, java.io.Reader
    public int read() {
        synchronized (((BufferedReader) this).lock) {
            try {
                if (this.eof) {
                    return -1;
                }
                int i10 = super.read();
                if (i10 == -1) {
                    this.eof = true;
                    return -1;
                }
                if (this.atBeginning) {
                    this.atBeginning = false;
                    if (i10 == 46) {
                        mark(2);
                        int i11 = super.read();
                        if (i11 == -1) {
                            this.eof = true;
                            return 46;
                        }
                        if (i11 == 13) {
                            int i12 = super.read();
                            if (i12 == -1) {
                                reset();
                                return 46;
                            }
                            if (i12 == 10) {
                                this.atBeginning = true;
                                this.eof = true;
                                return -1;
                            }
                        } else if (i11 == 46) {
                            return i11;
                        }
                        reset();
                        return 46;
                    }
                }
                if (this.seenCR) {
                    this.seenCR = false;
                    if (i10 == 10) {
                        this.atBeginning = true;
                    }
                }
                if (i10 == 13) {
                    this.seenCR = true;
                }
                return i10;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.BufferedReader
    public String readLine() {
        StringBuilder sb = new StringBuilder();
        synchronized (((BufferedReader) this).lock) {
            while (true) {
                try {
                    int i10 = read();
                    if (i10 == -1) {
                        String string = sb.toString();
                        if (string.isEmpty()) {
                            return null;
                        }
                        return string;
                    }
                    if (i10 == 10 && this.atBeginning) {
                        return sb.substring(0, sb.length() - 1);
                    }
                    sb.append((char) i10);
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
    public int read(char[] cArr, int i10, int i11) {
        int i12;
        if (i11 < 1) {
            return 0;
        }
        synchronized (((BufferedReader) this).lock) {
            try {
                int i13 = read();
                if (i13 == -1) {
                    return -1;
                }
                int i14 = i10;
                while (true) {
                    i12 = i14 + 1;
                    cArr[i14] = (char) i13;
                    i11--;
                    if (i11 <= 0 || (i13 = read()) == -1) {
                        break;
                        break;
                    }
                    i14 = i12;
                }
                return i12 - i10;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
