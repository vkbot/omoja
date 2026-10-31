package org.apache.commons.io.input.buffer;

import ai.onnxruntime.a;
import j1.i;
import java.util.Objects;
import n0.b;
import org.apache.commons.io.IOUtils;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class CircularByteBuffer {
    private final byte[] buffer;
    private int currentNumberOfBytes;
    private int endOffset;
    private int startOffset;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CircularByteBuffer(int i) {
        this.buffer = IOUtils.byteArray(i);
        this.startOffset = 0;
        this.endOffset = 0;
        this.currentNumberOfBytes = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void add(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "Buffer");
        if (i < 0 || i >= bArr.length) {
            i.k(a.e(i, "Illegal offset: "));
            return;
        }
        if (i2 < 0) {
            i.k(a.e(i2, "Illegal length: "));
            return;
        }
        if (this.currentNumberOfBytes + i2 > this.buffer.length) {
            i.l("No space available");
            return;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            byte[] bArr2 = this.buffer;
            int i4 = this.endOffset;
            bArr2[i4] = bArr[i + i3];
            int i5 = i4 + 1;
            this.endOffset = i5;
            if (i5 == bArr2.length) {
                this.endOffset = 0;
            }
        }
        this.currentNumberOfBytes += i2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void clear() {
        this.startOffset = 0;
        this.endOffset = 0;
        this.currentNumberOfBytes = 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getCurrentNumberOfBytes() {
        return this.currentNumberOfBytes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getSpace() {
        return this.buffer.length - this.currentNumberOfBytes;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasBytes() {
        return this.currentNumberOfBytes > 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean hasSpace(int i) {
        return this.currentNumberOfBytes + i <= this.buffer.length;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean peek(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "Buffer");
        if (i < 0 || i >= bArr.length) {
            i.k(a.e(i, "Illegal offset: "));
            return false;
        }
        if (i2 < 0 || i2 > this.buffer.length) {
            i.k(a.e(i2, "Illegal length: "));
            return false;
        }
        if (i2 < this.currentNumberOfBytes) {
            return false;
        }
        int i3 = this.startOffset;
        for (int i4 = 0; i4 < i2; i4++) {
            byte[] bArr2 = this.buffer;
            if (bArr2[i3] != bArr[i4 + i]) {
                return false;
            }
            i3++;
            if (i3 == bArr2.length) {
                i3 = 0;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void read(byte[] bArr, int i, int i2) {
        Objects.requireNonNull(bArr, "targetBuffer");
        if (i < 0 || i >= bArr.length) {
            i.k(a.e(i, "Illegal offset: "));
            return;
        }
        if (i2 < 0 || i2 > this.buffer.length) {
            i.k(a.e(i2, "Illegal length: "));
            return;
        }
        int i3 = i + i2;
        if (i3 > bArr.length) {
            b.o("The supplied byte array contains only ", bArr.length, i3 - 1, " bytes, but offset, and length would require ");
            return;
        }
        if (this.currentNumberOfBytes < i2) {
            throw new IllegalStateException("Currently, there are only " + this.currentNumberOfBytes + "in the buffer, not " + i2);
        }
        int i4 = 0;
        while (i4 < i2) {
            int i5 = i + 1;
            byte[] bArr2 = this.buffer;
            int i6 = this.startOffset;
            bArr[i] = bArr2[i6];
            this.currentNumberOfBytes--;
            int i7 = i6 + 1;
            this.startOffset = i7;
            if (i7 == bArr2.length) {
                this.startOffset = 0;
            }
            i4++;
            i = i5;
        }
    }

    public boolean hasSpace() {
        return this.currentNumberOfBytes < this.buffer.length;
    }

    public CircularByteBuffer() {
        this(8192);
    }

    public void add(byte b) {
        int i = this.currentNumberOfBytes;
        byte[] bArr = this.buffer;
        if (i < bArr.length) {
            int i2 = this.endOffset;
            bArr[i2] = b;
            this.currentNumberOfBytes = i + 1;
            int i3 = i2 + 1;
            this.endOffset = i3;
            if (i3 == bArr.length) {
                this.endOffset = 0;
                return;
            }
            return;
        }
        i.l("No space available");
    }

    public byte read() {
        int i = this.currentNumberOfBytes;
        if (i > 0) {
            byte[] bArr = this.buffer;
            int i2 = this.startOffset;
            byte b = bArr[i2];
            this.currentNumberOfBytes = i - 1;
            int i3 = i2 + 1;
            this.startOffset = i3;
            if (i3 == bArr.length) {
                this.startOffset = 0;
            }
            return b;
        }
        i.l("No bytes available.");
        return (byte) 0;
    }
}
