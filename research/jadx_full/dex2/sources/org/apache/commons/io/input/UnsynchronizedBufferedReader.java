package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class UnsynchronizedBufferedReader extends UnsynchronizedReader {
    private static final char NUL = 0;
    private char[] buf;
    private int end;
    private final Reader in;
    private int mark;
    private int markLimit;
    private int pos;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public UnsynchronizedBufferedReader(Reader reader, int i) {
        this.mark = -1;
        this.markLimit = -1;
        if (i <= 0) {
            j1.i.k("size <= 0");
            throw null;
        }
        this.in = reader;
        this.buf = new char[i];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX WARN: Code duplicated, block: B:15:0x0025 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0027  */
    private int fillBuf() throws IOException {
        int i = this.mark;
        if (i != -1) {
            int i2 = this.pos - i;
            int i3 = this.markLimit;
            if (i2 < i3) {
                if (i == 0) {
                    char[] cArr = this.buf;
                    if (i3 > cArr.length) {
                        int length = cArr.length * 2;
                        if (length <= i3) {
                            i3 = length;
                        }
                        char[] cArr2 = new char[i3];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.buf = cArr2;
                    } else if (i > 0) {
                        char[] cArr3 = this.buf;
                        System.arraycopy(cArr3, i, cArr3, 0, cArr3.length - i);
                        int i4 = this.pos;
                        int i5 = this.mark;
                        this.pos = i4 - i5;
                        this.end -= i5;
                        this.mark = 0;
                    }
                } else if (i > 0) {
                    char[] cArr4 = this.buf;
                    System.arraycopy(cArr4, i, cArr4, 0, cArr4.length - i);
                    int i6 = this.pos;
                    int i7 = this.mark;
                    this.pos = i6 - i7;
                    this.end -= i7;
                    this.mark = 0;
                }
                Reader reader = this.in;
                char[] cArr5 = this.buf;
                int i8 = this.pos;
                int i10 = reader.read(cArr5, i8, cArr5.length - i8);
                if (i10 != -1) {
                    this.end += i10;
                }
                return i10;
            }
        }
        Reader reader2 = this.in;
        char[] cArr6 = this.buf;
        int i11 = reader2.read(cArr6, 0, cArr6.length);
        if (i11 > 0) {
            this.mark = -1;
            this.pos = 0;
            this.end = i11;
        }
        return i11;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void chompNewline() {
        if (this.pos == this.end && fillBuf() == -1) {
            return;
        }
        char[] cArr = this.buf;
        int i = this.pos;
        if (cArr[i] == '\n') {
            this.pos = i + 1;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.UnsynchronizedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (isClosed()) {
            return;
        }
        this.in.close();
        this.buf = null;
        super.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public void mark(int i) {
        if (i < 0) {
            l9.i.a();
            return;
        }
        checkOpen();
        this.markLimit = i;
        this.mark = this.pos;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int peek(char[] cArr) throws IOException {
        int length = cArr.length;
        mark(length);
        int i = read(cArr, 0, length);
        reset();
        return i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        checkOpen();
        IOUtils.checkFromIndexSize(cArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        int i3 = i2;
        while (i3 > 0) {
            int i4 = this.end;
            int i5 = this.pos;
            int i6 = i4 - i5;
            if (i6 > 0) {
                if (i6 >= i3) {
                    i6 = i3;
                }
                System.arraycopy(this.buf, i5, cArr, i, i6);
                this.pos += i6;
                i += i6;
                i3 -= i6;
            }
            if (i3 == 0 || (i3 < i2 && !this.in.ready())) {
                break;
            }
            int i7 = this.mark;
            if ((i7 == -1 || this.pos - i7 >= this.markLimit) && i3 >= this.buf.length) {
                int i8 = this.in.read(cArr, i, i3);
                if (i8 <= 0) {
                    break;
                }
                i3 -= i8;
                this.mark = -1;
                break;
            }
            if (fillBuf() == -1) {
                break;
            }
        }
        int i10 = i2 - i3;
        if (i10 > 0 || i10 == i2) {
            return i10;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String readLine() {
        int i;
        checkOpen();
        if (this.pos == this.end && fillBuf() == -1) {
            return null;
        }
        int i2 = this.pos;
        while (true) {
            int i3 = this.end;
            char[] cArr = this.buf;
            if (i2 < i3) {
                char c = cArr[i2];
                if (c <= '\r') {
                    if (c == '\n') {
                        int i4 = this.pos;
                        String str = new String(cArr, i4, i2 - i4);
                        this.pos = i2 + 1;
                        return str;
                    }
                    if (c == '\r') {
                        int i5 = this.pos;
                        String str2 = new String(cArr, i5, i2 - i5);
                        int i6 = i2 + 1;
                        this.pos = i6;
                        if (i6 < this.end || fillBuf() != -1) {
                            char[] cArr2 = this.buf;
                            int i7 = this.pos;
                            if (cArr2[i7] == '\n') {
                                this.pos = i7 + 1;
                            }
                        }
                        return str2;
                    }
                }
                i2++;
            } else {
                StringBuilder sb = new StringBuilder(80);
                int i8 = this.pos;
                sb.append(cArr, i8, this.end - i8);
                char c2 = 0;
                while (true) {
                    this.pos = this.end;
                    if (c2 == '\n') {
                        return sb.toString();
                    }
                    if (fillBuf() == -1) {
                        if (sb.length() > 0 || c2 != 0) {
                            return sb.toString();
                        }
                        return null;
                    }
                    int i10 = this.pos;
                    while (true) {
                        i = this.end;
                        if (i10 < i) {
                            char[] cArr3 = this.buf;
                            char c3 = cArr3[i10];
                            if (c2 != 0) {
                                if (c2 == '\r' && c3 == '\n') {
                                    int i11 = this.pos;
                                    if (i10 > i11) {
                                        sb.append(cArr3, i11, (i10 - i11) - 1);
                                    }
                                    this.pos = i10 + 1;
                                } else {
                                    int i12 = this.pos;
                                    if (i10 > i12) {
                                        sb.append(cArr3, i12, (i10 - i12) - 1);
                                    }
                                    this.pos = i10;
                                }
                                return sb.toString();
                            }
                            if (c3 == '\n' || c3 == '\r') {
                                c2 = c3;
                            }
                            i10++;
                        }
                    }
                    char[] cArr4 = this.buf;
                    if (c2 == 0) {
                        int i13 = this.pos;
                        sb.append(cArr4, i13, i - i13);
                    } else {
                        int i14 = this.pos;
                        sb.append(cArr4, i14, (i - i14) - 1);
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public boolean ready() {
        checkOpen();
        return this.end - this.pos > 0 || this.in.ready();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public void reset() {
        checkOpen();
        int i = this.mark;
        if (i != -1) {
            this.pos = i;
        } else {
            n0.b.A("mark == -1");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.UnsynchronizedReader, java.io.Reader
    public long skip(long j) {
        if (j < 0) {
            l9.i.a();
            return 0L;
        }
        checkOpen();
        if (j < 1) {
            return 0L;
        }
        int i = this.end;
        int i2 = this.pos;
        if (i - i2 >= j) {
            this.pos = Math.toIntExact(j) + i2;
            return j;
        }
        long j2 = i - i2;
        this.pos = i;
        while (j2 < j) {
            if (fillBuf() == -1) {
                return j2;
            }
            int i3 = this.end;
            int i4 = this.pos;
            long j3 = j - j2;
            if (i3 - i4 >= j3) {
                this.pos = Math.toIntExact(j3) + i4;
                return j;
            }
            j2 += (long) (i3 - i4);
            this.pos = i3;
        }
        return j;
    }

    public int peek() {
        mark(1);
        int i = read();
        reset();
        return i;
    }

    public UnsynchronizedBufferedReader(Reader reader) {
        this(reader, 8192);
    }

    @Override // java.io.Reader
    public int read() {
        checkOpen();
        if (this.pos >= this.end && fillBuf() == -1) {
            return -1;
        }
        char[] cArr = this.buf;
        int i = this.pos;
        this.pos = i + 1;
        return cArr[i];
    }
}
