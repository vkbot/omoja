package org.apache.commons.p161io.input;

import ai.onnxruntime.AbstractC0074a;
import java.io.Reader;
import java.io.Serializable;
import org.apache.commons.p161io.IOUtils;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CharSequenceReader extends Reader implements Serializable {
    private static final long serialVersionUID = 3724187752191401220L;
    private final CharSequence charSequence;
    private final Integer end;
    private int idx;
    private int mark;
    private final int start;

    public CharSequenceReader(String str, int i10, int i11) {
        if (i10 < 0) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Start index is less than zero: "));
            throw null;
        }
        if (i11 < i10) {
            C1929i.m3029k(AbstractC0074a.m156g(i10, "End index is less than start ", ": ", i11));
            throw null;
        }
        this.charSequence = str == null ? "" : str;
        this.start = i10;
        this.end = Integer.valueOf(i11);
        this.idx = i10;
        this.mark = i10;
    }

    private int end() {
        int length = this.charSequence.length();
        Integer num = this.end;
        return Math.min(length, num == null ? Integer.MAX_VALUE : num.intValue());
    }

    private int start() {
        return Math.min(this.charSequence.length(), this.start);
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        int i10 = this.start;
        this.idx = i10;
        this.mark = i10;
    }

    @Override // java.io.Reader
    public void mark(int i10) {
        this.mark = this.idx;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(cArr, i10, i11);
        if (i11 == 0) {
            return 0;
        }
        if (this.idx >= end()) {
            return -1;
        }
        CharSequence charSequence = this.charSequence;
        if (charSequence instanceof String) {
            int iMin = Math.min(i11, end() - this.idx);
            String str = (String) this.charSequence;
            int i12 = this.idx;
            str.getChars(i12, i12 + iMin, cArr, i10);
            this.idx += iMin;
            return iMin;
        }
        if (charSequence instanceof StringBuilder) {
            int iMin2 = Math.min(i11, end() - this.idx);
            StringBuilder sb = (StringBuilder) this.charSequence;
            int i13 = this.idx;
            sb.getChars(i13, i13 + iMin2, cArr, i10);
            this.idx += iMin2;
            return iMin2;
        }
        if (charSequence instanceof StringBuffer) {
            int iMin3 = Math.min(i11, end() - this.idx);
            StringBuffer stringBuffer = (StringBuffer) this.charSequence;
            int i14 = this.idx;
            stringBuffer.getChars(i14, i14 + iMin3, cArr, i10);
            this.idx += iMin3;
            return iMin3;
        }
        int i15 = 0;
        for (int i16 = 0; i16 < i11; i16++) {
            int i17 = read();
            if (i17 == -1) {
                break;
            }
            cArr[i10 + i16] = (char) i17;
            i15++;
        }
        return i15;
    }

    @Override // java.io.Reader
    public boolean ready() {
        return this.idx < end();
    }

    @Override // java.io.Reader
    public void reset() {
        this.idx = this.mark;
    }

    @Override // java.io.Reader
    public long skip(long j10) {
        if (j10 < 0) {
            C1929i.m3029k(AbstractC0074a.m157h(j10, "Number of characters to skip is less than zero: "));
            return 0L;
        }
        if (this.idx >= end()) {
            return 0L;
        }
        int iMin = (int) Math.min(end(), ((long) this.idx) + j10);
        int i10 = iMin - this.idx;
        this.idx = iMin;
        return i10;
    }

    public String toString() {
        return this.charSequence.subSequence(start(), end()).toString();
    }

    public CharSequenceReader(CharSequence charSequence, int i10) {
        this(charSequence, i10, Integer.MAX_VALUE);
    }

    public CharSequenceReader(CharSequence charSequence) {
        this(charSequence, 0);
    }

    @Override // java.io.Reader
    public int read() {
        if (this.idx >= end()) {
            return -1;
        }
        CharSequence charSequence = this.charSequence;
        int i10 = this.idx;
        this.idx = i10 + 1;
        return charSequence.charAt(i10);
    }
}
