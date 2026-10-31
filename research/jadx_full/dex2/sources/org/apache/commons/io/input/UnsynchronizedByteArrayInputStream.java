package org.apache.commons.io.input;

import java.io.InputStream;
import java.util.Objects;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class UnsynchronizedByteArrayInputStream extends InputStream {
    public static final int END_OF_STREAM = -1;
    private final byte[] data;
    private final int eod;
    private int markedOffset;
    private int offset;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public UnsynchronizedByteArrayInputStream(byte[] bArr, int i, int i2) {
        requireNonNegative(i, "offset");
        requireNonNegative(i2, "length");
        Objects.requireNonNull(bArr, "data");
        this.data = bArr;
        this.eod = Math.min(minPosLen(bArr, i) + i2, bArr.length);
        this.offset = minPosLen(bArr, i);
        this.markedOffset = minPosLen(bArr, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static UnsynchronizedByteArrayInputStream$Builder builder() {
        return new UnsynchronizedByteArrayInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int minPosLen(byte[] bArr, int i) {
        requireNonNegative(i, "defaultValue");
        return Math.min(i, bArr.length > 0 ? bArr.length : i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int requireNonNegative(int i, String str) {
        if (i >= 0) {
            return i;
        }
        j1.i.k(ai.onnxruntime.a.C(str, " cannot be negative"));
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int available() {
        int i = this.offset;
        int i2 = this.eod;
        if (i < i2) {
            return i2 - i;
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public void mark(int i) {
        this.markedOffset = this.offset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.offset;
        int i4 = this.eod;
        if (i3 >= i4) {
            return -1;
        }
        int i5 = i4 - i3;
        if (i2 >= i5) {
            i2 = i5;
        }
        if (i2 <= 0) {
            return 0;
        }
        System.arraycopy(this.data, i3, bArr, i, i2);
        this.offset += i2;
        return i2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public void reset() {
        this.offset = this.markedOffset;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public long skip(long j) {
        if (j < 0) {
            j1.i.k("Skipping backward is not supported");
            return 0L;
        }
        int i = this.eod;
        int i2 = this.offset;
        long j2 = i - i2;
        if (j < j2) {
            j2 = j;
        }
        this.offset = Math.addExact(i2, Math.toIntExact(j));
        return j2;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        Objects.requireNonNull(bArr, "dest");
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read() {
        int i = this.offset;
        if (i >= this.eod) {
            return -1;
        }
        byte[] bArr = this.data;
        this.offset = i + 1;
        return bArr[i] & 255;
    }

    private UnsynchronizedByteArrayInputStream(UnsynchronizedByteArrayInputStream$Builder unsynchronizedByteArrayInputStream$Builder) {
        this(UnsynchronizedByteArrayInputStream$Builder.access$100(unsynchronizedByteArrayInputStream$Builder), UnsynchronizedByteArrayInputStream$Builder.access$200(unsynchronizedByteArrayInputStream$Builder), UnsynchronizedByteArrayInputStream$Builder.access$300(unsynchronizedByteArrayInputStream$Builder));
    }

    @Deprecated
    public UnsynchronizedByteArrayInputStream(byte[] bArr) {
        this(bArr, bArr.length, 0, 0);
    }

    @Deprecated
    public UnsynchronizedByteArrayInputStream(byte[] bArr, int i) {
        this(bArr, bArr.length, Math.min(requireNonNegative(i, "offset"), minPosLen(bArr, i)), minPosLen(bArr, i));
    }

    public /* synthetic */ UnsynchronizedByteArrayInputStream(UnsynchronizedByteArrayInputStream$Builder unsynchronizedByteArrayInputStream$Builder, UnsynchronizedByteArrayInputStream$1 unsynchronizedByteArrayInputStream$1) {
        this(unsynchronizedByteArrayInputStream$Builder);
    }

    private UnsynchronizedByteArrayInputStream(byte[] bArr, int i, int i2, int i3) {
        Objects.requireNonNull(bArr, "data");
        this.data = bArr;
        this.eod = i;
        this.offset = i2;
        this.markedOffset = i3;
    }
}
