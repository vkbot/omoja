package org.apache.commons.p161io.input;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.InputStream;
import java.util.Objects;
import kotlin.UByte;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class UnsynchronizedByteArrayInputStream extends InputStream {
    public static final int END_OF_STREAM = -1;
    private final byte[] data;
    private final int eod;
    private int markedOffset;
    private int offset;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<UnsynchronizedByteArrayInputStream, Builder> {
        private int length;
        private int offset;

        /* JADX INFO: Access modifiers changed from: private */
        public byte[] checkOriginByteArray() {
            return checkOrigin().getByteArray();
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public UnsynchronizedByteArrayInputStream get() {
            return new UnsynchronizedByteArrayInputStream(this);
        }

        @Override // org.apache.commons.p161io.build.AbstractOriginSupplier
        public Builder setByteArray(byte[] bArr) {
            Objects.requireNonNull(bArr, "origin");
            this.length = bArr.length;
            return (Builder) super.setByteArray(bArr);
        }

        public Builder setLength(int i10) {
            if (i10 >= 0) {
                this.length = i10;
                return this;
            }
            C1929i.m3029k("length cannot be negative");
            return null;
        }

        public Builder setOffset(int i10) {
            if (i10 >= 0) {
                this.offset = i10;
                return this;
            }
            C1929i.m3029k("offset cannot be negative");
            return null;
        }
    }

    @Deprecated
    public UnsynchronizedByteArrayInputStream(byte[] bArr, int i10, int i11) {
        requireNonNegative(i10, TypedValues.CycleType.S_WAVE_OFFSET);
        requireNonNegative(i11, "length");
        Objects.requireNonNull(bArr, "data");
        this.data = bArr;
        this.eod = Math.min(minPosLen(bArr, i10) + i11, bArr.length);
        this.offset = minPosLen(bArr, i10);
        this.markedOffset = minPosLen(bArr, i10);
    }

    public static Builder builder() {
        return new Builder();
    }

    private static int minPosLen(byte[] bArr, int i10) {
        requireNonNegative(i10, "defaultValue");
        return Math.min(i10, bArr.length > 0 ? bArr.length : i10);
    }

    private static int requireNonNegative(int i10, String str) {
        if (i10 >= 0) {
            return i10;
        }
        C1929i.m3029k(AbstractC0074a.m148C(str, " cannot be negative"));
        return 0;
    }

    @Override // java.io.InputStream
    public int available() {
        int i10 = this.offset;
        int i11 = this.eod;
        if (i10 < i11) {
            return i11 - i10;
        }
        return 0;
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.markedOffset = this.offset;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.offset;
        int i13 = this.eod;
        if (i12 >= i13) {
            return -1;
        }
        int i14 = i13 - i12;
        if (i11 >= i14) {
            i11 = i14;
        }
        if (i11 <= 0) {
            return 0;
        }
        System.arraycopy(this.data, i12, bArr, i10, i11);
        this.offset += i11;
        return i11;
    }

    @Override // java.io.InputStream
    public void reset() {
        this.offset = this.markedOffset;
    }

    @Override // java.io.InputStream
    public long skip(long j10) {
        if (j10 < 0) {
            C1929i.m3029k("Skipping backward is not supported");
            return 0L;
        }
        int i10 = this.eod;
        int i11 = this.offset;
        long j11 = i10 - i11;
        if (j10 < j11) {
            j11 = j10;
        }
        this.offset = Math.addExact(i11, Math.toIntExact(j10));
        return j11;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        Objects.requireNonNull(bArr, "dest");
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read() {
        int i10 = this.offset;
        if (i10 >= this.eod) {
            return -1;
        }
        byte[] bArr = this.data;
        this.offset = i10 + 1;
        return bArr[i10] & UByte.MAX_VALUE;
    }

    private UnsynchronizedByteArrayInputStream(Builder builder) {
        this(builder.checkOriginByteArray(), builder.offset, builder.length);
    }

    @Deprecated
    public UnsynchronizedByteArrayInputStream(byte[] bArr) {
        this(bArr, bArr.length, 0, 0);
    }

    @Deprecated
    public UnsynchronizedByteArrayInputStream(byte[] bArr, int i10) {
        this(bArr, bArr.length, Math.min(requireNonNegative(i10, TypedValues.CycleType.S_WAVE_OFFSET), minPosLen(bArr, i10)), minPosLen(bArr, i10));
    }

    private UnsynchronizedByteArrayInputStream(byte[] bArr, int i10, int i11, int i12) {
        Objects.requireNonNull(bArr, "data");
        this.data = bArr;
        this.eod = i10;
        this.offset = i11;
        this.markedOffset = i12;
    }
}
