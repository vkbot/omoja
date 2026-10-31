package org.apache.commons.p161io.input.buffer;

import ai.onnxruntime.AbstractC0074a;
import java.util.Objects;
import org.apache.commons.p161io.IOUtils;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CircularByteBuffer {
    private final byte[] buffer;
    private int currentNumberOfBytes;
    private int endOffset;
    private int startOffset;

    public CircularByteBuffer(int i10) {
        this.buffer = IOUtils.byteArray(i10);
        this.startOffset = 0;
        this.endOffset = 0;
        this.currentNumberOfBytes = 0;
    }

    public void add(byte[] bArr, int i10, int i11) {
        Objects.requireNonNull(bArr, "Buffer");
        if (i10 < 0 || i10 >= bArr.length) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Illegal offset: "));
            return;
        }
        if (i11 < 0) {
            C1929i.m3029k(AbstractC0074a.m154e(i11, "Illegal length: "));
            return;
        }
        if (this.currentNumberOfBytes + i11 > this.buffer.length) {
            C1929i.m3030l("No space available");
            return;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            byte[] bArr2 = this.buffer;
            int i13 = this.endOffset;
            bArr2[i13] = bArr[i10 + i12];
            int i14 = i13 + 1;
            this.endOffset = i14;
            if (i14 == bArr2.length) {
                this.endOffset = 0;
            }
        }
        this.currentNumberOfBytes += i11;
    }

    public void clear() {
        this.startOffset = 0;
        this.endOffset = 0;
        this.currentNumberOfBytes = 0;
    }

    public int getCurrentNumberOfBytes() {
        return this.currentNumberOfBytes;
    }

    public int getSpace() {
        return this.buffer.length - this.currentNumberOfBytes;
    }

    public boolean hasBytes() {
        return this.currentNumberOfBytes > 0;
    }

    public boolean hasSpace(int i10) {
        return this.currentNumberOfBytes + i10 <= this.buffer.length;
    }

    public boolean peek(byte[] bArr, int i10, int i11) {
        Objects.requireNonNull(bArr, "Buffer");
        if (i10 < 0 || i10 >= bArr.length) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Illegal offset: "));
            return false;
        }
        if (i11 < 0 || i11 > this.buffer.length) {
            C1929i.m3029k(AbstractC0074a.m154e(i11, "Illegal length: "));
            return false;
        }
        if (i11 < this.currentNumberOfBytes) {
            return false;
        }
        int i12 = this.startOffset;
        for (int i13 = 0; i13 < i11; i13++) {
            byte[] bArr2 = this.buffer;
            if (bArr2[i12] != bArr[i13 + i10]) {
                return false;
            }
            i12++;
            if (i12 == bArr2.length) {
                i12 = 0;
            }
        }
        return true;
    }

    public void read(byte[] bArr, int i10, int i11) {
        Objects.requireNonNull(bArr, "targetBuffer");
        if (i10 < 0 || i10 >= bArr.length) {
            C1929i.m3029k(AbstractC0074a.m154e(i10, "Illegal offset: "));
            return;
        }
        if (i11 < 0 || i11 > this.buffer.length) {
            C1929i.m3029k(AbstractC0074a.m154e(i11, "Illegal length: "));
            return;
        }
        int i12 = i10 + i11;
        if (i12 > bArr.length) {
            C2467b.m3829o("The supplied byte array contains only ", bArr.length, i12 - 1, " bytes, but offset, and length would require ");
            return;
        }
        if (this.currentNumberOfBytes < i11) {
            throw new IllegalStateException("Currently, there are only " + this.currentNumberOfBytes + "in the buffer, not " + i11);
        }
        int i13 = 0;
        while (i13 < i11) {
            int i14 = i10 + 1;
            byte[] bArr2 = this.buffer;
            int i15 = this.startOffset;
            bArr[i10] = bArr2[i15];
            this.currentNumberOfBytes--;
            int i16 = i15 + 1;
            this.startOffset = i16;
            if (i16 == bArr2.length) {
                this.startOffset = 0;
            }
            i13++;
            i10 = i14;
        }
    }

    public boolean hasSpace() {
        return this.currentNumberOfBytes < this.buffer.length;
    }

    public CircularByteBuffer() {
        this(8192);
    }

    public void add(byte b10) {
        int i10 = this.currentNumberOfBytes;
        byte[] bArr = this.buffer;
        if (i10 < bArr.length) {
            int i11 = this.endOffset;
            bArr[i11] = b10;
            this.currentNumberOfBytes = i10 + 1;
            int i12 = i11 + 1;
            this.endOffset = i12;
            if (i12 == bArr.length) {
                this.endOffset = 0;
                return;
            }
            return;
        }
        C1929i.m3030l("No space available");
    }

    public byte read() {
        int i10 = this.currentNumberOfBytes;
        if (i10 > 0) {
            byte[] bArr = this.buffer;
            int i11 = this.startOffset;
            byte b10 = bArr[i11];
            this.currentNumberOfBytes = i10 - 1;
            int i12 = i11 + 1;
            this.startOffset = i12;
            if (i12 == bArr.length) {
                this.startOffset = 0;
            }
            return b10;
        }
        C1929i.m3030l("No bytes available.");
        return (byte) 0;
    }
}
