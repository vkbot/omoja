package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.Reader;
import org.apache.commons.p161io.IOUtils;
import p099j1.C1929i;
import p130l9.C2237i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class UnsynchronizedBufferedReader extends UnsynchronizedReader {
    private static final char NUL = 0;
    private char[] buf;
    private int end;

    /* JADX INFO: renamed from: in */
    private final Reader f8039in;
    private int mark;
    private int markLimit;
    private int pos;

    public UnsynchronizedBufferedReader(Reader reader, int i10) {
        this.mark = -1;
        this.markLimit = -1;
        if (i10 <= 0) {
            C1929i.m3029k("size <= 0");
            throw null;
        }
        this.f8039in = reader;
        this.buf = new char[i10];
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0025 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:16:0x0027  */
    private int fillBuf() throws IOException {
        int i10 = this.mark;
        if (i10 != -1) {
            int i11 = this.pos - i10;
            int i12 = this.markLimit;
            if (i11 < i12) {
                if (i10 == 0) {
                    char[] cArr = this.buf;
                    if (i12 > cArr.length) {
                        int length = cArr.length * 2;
                        if (length <= i12) {
                            i12 = length;
                        }
                        char[] cArr2 = new char[i12];
                        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                        this.buf = cArr2;
                    } else if (i10 > 0) {
                        char[] cArr3 = this.buf;
                        System.arraycopy(cArr3, i10, cArr3, 0, cArr3.length - i10);
                        int i13 = this.pos;
                        int i14 = this.mark;
                        this.pos = i13 - i14;
                        this.end -= i14;
                        this.mark = 0;
                    }
                } else if (i10 > 0) {
                    char[] cArr4 = this.buf;
                    System.arraycopy(cArr4, i10, cArr4, 0, cArr4.length - i10);
                    int i15 = this.pos;
                    int i16 = this.mark;
                    this.pos = i15 - i16;
                    this.end -= i16;
                    this.mark = 0;
                }
                Reader reader = this.f8039in;
                char[] cArr5 = this.buf;
                int i17 = this.pos;
                int i18 = reader.read(cArr5, i17, cArr5.length - i17);
                if (i18 != -1) {
                    this.end += i18;
                }
                return i18;
            }
        }
        Reader reader2 = this.f8039in;
        char[] cArr6 = this.buf;
        int i19 = reader2.read(cArr6, 0, cArr6.length);
        if (i19 > 0) {
            this.mark = -1;
            this.pos = 0;
            this.end = i19;
        }
        return i19;
    }

    public final void chompNewline() {
        if (this.pos == this.end && fillBuf() == -1) {
            return;
        }
        char[] cArr = this.buf;
        int i10 = this.pos;
        if (cArr[i10] == '\n') {
            this.pos = i10 + 1;
        }
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedReader, java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (isClosed()) {
            return;
        }
        this.f8039in.close();
        this.buf = null;
        super.close();
    }

    @Override // java.io.Reader
    public void mark(int i10) throws IOException {
        if (i10 < 0) {
            C2237i.m3594a();
            return;
        }
        checkOpen();
        this.markLimit = i10;
        this.mark = this.pos;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    public int peek(char[] cArr) throws IOException {
        int length = cArr.length;
        mark(length);
        int i10 = read(cArr, 0, length);
        reset();
        return i10;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i10, int i11) throws IOException {
        checkOpen();
        IOUtils.checkFromIndexSize(cArr, i10, i11);
        if (i11 == 0) {
            return 0;
        }
        int i12 = i11;
        while (i12 > 0) {
            int i13 = this.end;
            int i14 = this.pos;
            int i15 = i13 - i14;
            if (i15 > 0) {
                if (i15 >= i12) {
                    i15 = i12;
                }
                System.arraycopy(this.buf, i14, cArr, i10, i15);
                this.pos += i15;
                i10 += i15;
                i12 -= i15;
            }
            if (i12 == 0 || (i12 < i11 && !this.f8039in.ready())) {
                break;
            }
            int i16 = this.mark;
            if ((i16 == -1 || this.pos - i16 >= this.markLimit) && i12 >= this.buf.length) {
                int i17 = this.f8039in.read(cArr, i10, i12);
                if (i17 <= 0) {
                    break;
                }
                i12 -= i17;
                this.mark = -1;
                break;
            }
            if (fillBuf() == -1) {
                break;
            }
        }
        int i18 = i11 - i12;
        if (i18 > 0 || i18 == i11) {
            return i18;
        }
        return -1;
    }

    public String readLine() throws IOException {
        int i10;
        checkOpen();
        if (this.pos == this.end && fillBuf() == -1) {
            return null;
        }
        int i11 = this.pos;
        while (true) {
            int i12 = this.end;
            char[] cArr = this.buf;
            if (i11 < i12) {
                char c = cArr[i11];
                if (c <= '\r') {
                    if (c == '\n') {
                        int i13 = this.pos;
                        String str = new String(cArr, i13, i11 - i13);
                        this.pos = i11 + 1;
                        return str;
                    }
                    if (c == '\r') {
                        int i14 = this.pos;
                        String str2 = new String(cArr, i14, i11 - i14);
                        int i15 = i11 + 1;
                        this.pos = i15;
                        if (i15 < this.end || fillBuf() != -1) {
                            char[] cArr2 = this.buf;
                            int i16 = this.pos;
                            if (cArr2[i16] == '\n') {
                                this.pos = i16 + 1;
                            }
                        }
                        return str2;
                    }
                }
                i11++;
            } else {
                StringBuilder sb = new StringBuilder(80);
                int i17 = this.pos;
                sb.append(cArr, i17, this.end - i17);
                char c10 = 0;
                while (true) {
                    this.pos = this.end;
                    if (c10 == '\n') {
                        return sb.toString();
                    }
                    if (fillBuf() == -1) {
                        if (sb.length() > 0 || c10 != 0) {
                            return sb.toString();
                        }
                        return null;
                    }
                    int i18 = this.pos;
                    while (true) {
                        i10 = this.end;
                        if (i18 < i10) {
                            char[] cArr3 = this.buf;
                            char c11 = cArr3[i18];
                            if (c10 != 0) {
                                if (c10 == '\r' && c11 == '\n') {
                                    int i19 = this.pos;
                                    if (i18 > i19) {
                                        sb.append(cArr3, i19, (i18 - i19) - 1);
                                    }
                                    this.pos = i18 + 1;
                                } else {
                                    int i20 = this.pos;
                                    if (i18 > i20) {
                                        sb.append(cArr3, i20, (i18 - i20) - 1);
                                    }
                                    this.pos = i18;
                                }
                                return sb.toString();
                            }
                            if (c11 == '\n' || c11 == '\r') {
                                c10 = c11;
                            }
                            i18++;
                        }
                    }
                    char[] cArr4 = this.buf;
                    if (c10 == 0) {
                        int i21 = this.pos;
                        sb.append(cArr4, i21, i10 - i21);
                    } else {
                        int i22 = this.pos;
                        sb.append(cArr4, i22, (i10 - i22) - 1);
                    }
                }
            }
        }
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        checkOpen();
        return this.end - this.pos > 0 || this.f8039in.ready();
    }

    @Override // java.io.Reader
    public void reset() throws IOException {
        checkOpen();
        int i10 = this.mark;
        if (i10 != -1) {
            this.pos = i10;
        } else {
            C2467b.m3820A("mark == -1");
        }
    }

    @Override // org.apache.commons.p161io.input.UnsynchronizedReader, java.io.Reader
    public long skip(long j10) throws IOException {
        if (j10 < 0) {
            C2237i.m3594a();
            return 0L;
        }
        checkOpen();
        if (j10 < 1) {
            return 0L;
        }
        int i10 = this.end;
        int i11 = this.pos;
        if (i10 - i11 >= j10) {
            this.pos = Math.toIntExact(j10) + i11;
            return j10;
        }
        long j11 = i10 - i11;
        this.pos = i10;
        while (j11 < j10) {
            if (fillBuf() == -1) {
                return j11;
            }
            int i12 = this.end;
            int i13 = this.pos;
            long j12 = j10 - j11;
            if (i12 - i13 >= j12) {
                this.pos = Math.toIntExact(j12) + i13;
                return j10;
            }
            j11 += (long) (i12 - i13);
            this.pos = i12;
        }
        return j10;
    }

    public int peek() throws IOException {
        mark(1);
        int i10 = read();
        reset();
        return i10;
    }

    public UnsynchronizedBufferedReader(Reader reader) {
        this(reader, 8192);
    }

    @Override // java.io.Reader
    public int read() throws IOException {
        checkOpen();
        if (this.pos >= this.end && fillBuf() == -1) {
            return -1;
        }
        char[] cArr = this.buf;
        int i10 = this.pos;
        this.pos = i10 + 1;
        return cArr[i10];
    }
}
