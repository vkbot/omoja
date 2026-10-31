package org.apache.commons.io.input;

import java.io.Reader;
import java.io.Serializable;
import okhttp3.HttpUrl;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class CharSequenceReader extends Reader implements Serializable {
    private static final long serialVersionUID = 3724187752191401220L;
    private final CharSequence charSequence;
    private final Integer end;
    private int idx;
    private int mark;
    private final int start;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharSequenceReader(CharSequence charSequence, int i, int i2) {
        if (i < 0) {
            j1.i.k(ai.onnxruntime.a.e(i, "Start index is less than zero: "));
            throw null;
        }
        if (i2 < i) {
            j1.i.k(ai.onnxruntime.a.g(i, "End index is less than start ", ": ", i2));
            throw null;
        }
        this.charSequence = charSequence == null ? HttpUrl.FRAGMENT_ENCODE_SET : charSequence;
        this.start = i;
        this.end = Integer.valueOf(i2);
        this.idx = i;
        this.mark = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int end() {
        int length = this.charSequence.length();
        Integer num = this.end;
        return Math.min(length, num == null ? Integer.MAX_VALUE : num.intValue());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int start() {
        return Math.min(this.charSequence.length(), this.start);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        int i = this.start;
        this.idx = i;
        this.mark = i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public void mark(int i) {
        this.mark = this.idx;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        IOUtils.checkFromIndexSize(cArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        if (this.idx >= end()) {
            return -1;
        }
        CharSequence charSequence = this.charSequence;
        if (charSequence instanceof String) {
            int iMin = Math.min(i2, end() - this.idx);
            String str = (String) this.charSequence;
            int i3 = this.idx;
            str.getChars(i3, i3 + iMin, cArr, i);
            this.idx += iMin;
            return iMin;
        }
        if (charSequence instanceof StringBuilder) {
            int iMin2 = Math.min(i2, end() - this.idx);
            StringBuilder sb = (StringBuilder) this.charSequence;
            int i4 = this.idx;
            sb.getChars(i4, i4 + iMin2, cArr, i);
            this.idx += iMin2;
            return iMin2;
        }
        if (charSequence instanceof StringBuffer) {
            int iMin3 = Math.min(i2, end() - this.idx);
            StringBuffer stringBuffer = (StringBuffer) this.charSequence;
            int i5 = this.idx;
            stringBuffer.getChars(i5, i5 + iMin3, cArr, i);
            this.idx += iMin3;
            return iMin3;
        }
        int i6 = 0;
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = read();
            if (i8 == -1) {
                break;
            }
            cArr[i + i7] = (char) i8;
            i6++;
        }
        return i6;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public boolean ready() {
        return this.idx < end();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public void reset() {
        this.idx = this.mark;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.Reader
    public long skip(long j) {
        if (j < 0) {
            j1.i.k(ai.onnxruntime.a.h(j, "Number of characters to skip is less than zero: "));
            return 0L;
        }
        if (this.idx >= end()) {
            return 0L;
        }
        int iMin = (int) Math.min(end(), ((long) this.idx) + j);
        int i = iMin - this.idx;
        this.idx = iMin;
        return i;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        return this.charSequence.subSequence(start(), end()).toString();
    }

    public CharSequenceReader(CharSequence charSequence, int i) {
        this(charSequence, i, Integer.MAX_VALUE);
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
        int i = this.idx;
        this.idx = i + 1;
        return charSequence.charAt(i);
    }
}
