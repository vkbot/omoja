package org.apache.commons.p161io.input;

import java.util.Objects;
import kotlin.UByte;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CircularInputStream extends AbstractInputStream {
    private long byteCount;
    private int position = -1;
    private final byte[] repeatedContent;
    private final long targetByteCount;

    public CircularInputStream(byte[] bArr, long j10) {
        this.repeatedContent = validate(bArr);
        if (bArr.length != 0) {
            this.targetByteCount = j10;
        } else {
            C1929i.m3029k("repeatContent is empty.");
            throw null;
        }
    }

    private static byte[] validate(byte[] bArr) {
        Objects.requireNonNull(bArr, "repeatContent");
        for (byte b10 : bArr) {
            if (b10 == -1) {
                C1929i.m3029k("repeatContent contains the end-of-stream marker -1");
                return null;
            }
        }
        return bArr;
    }

    @Override // java.io.InputStream
    public int available() {
        if (isClosed()) {
            return 0;
        }
        long j10 = this.targetByteCount;
        if (j10 <= 2147483647L) {
            return Math.max(Integer.MAX_VALUE, (int) j10);
        }
        return Integer.MAX_VALUE;
    }

    @Override // org.apache.commons.p161io.input.AbstractInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        this.byteCount = this.targetByteCount;
    }

    @Override // java.io.InputStream
    public int read() {
        if (this.targetByteCount >= 0 || isClosed()) {
            long j10 = this.byteCount;
            if (j10 == this.targetByteCount) {
                return -1;
            }
            this.byteCount = j10 + 1;
        }
        int i10 = this.position + 1;
        byte[] bArr = this.repeatedContent;
        int length = i10 % bArr.length;
        this.position = length;
        return bArr[length] & UByte.MAX_VALUE;
    }
}
