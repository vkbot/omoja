package org.apache.commons.io.input;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class ReversedLinesFileReader$FilePart {
    private int currentLastBytePos;
    private final byte[] data;
    private byte[] leftOver;
    private final long partNumber;
    final /* synthetic */ ReversedLinesFileReader this$0;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ReversedLinesFileReader$FilePart(ReversedLinesFileReader reversedLinesFileReader, long j, int i, byte[] bArr) throws IOException {
        this.this$0 = reversedLinesFileReader;
        this.partNumber = j;
        byte[] bArr2 = new byte[(bArr != null ? bArr.length : 0) + i];
        this.data = bArr2;
        long jAccess$200 = (j - 1) * ((long) ReversedLinesFileReader.access$200(reversedLinesFileReader));
        if (j > 0) {
            ReversedLinesFileReader.access$300(reversedLinesFileReader).position(jAccess$200);
            if (ReversedLinesFileReader.access$300(reversedLinesFileReader).read(ByteBuffer.wrap(bArr2, 0, i)) != i) {
                j1.i.l("Count of requested bytes and actually read bytes don't match");
                throw null;
            }
        }
        if (bArr != null) {
            System.arraycopy(bArr, 0, bArr2, i, bArr.length);
        }
        this.currentLastBytePos = bArr2.length - 1;
        this.leftOver = null;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ ReversedLinesFileReader$FilePart access$1000(ReversedLinesFileReader$FilePart reversedLinesFileReader$FilePart) {
        return reversedLinesFileReader$FilePart.rollOver();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ String access$900(ReversedLinesFileReader$FilePart reversedLinesFileReader$FilePart) {
        return reversedLinesFileReader$FilePart.readLine();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void createLeftOver() {
        int i = this.currentLastBytePos + 1;
        if (i > 0) {
            this.leftOver = Arrays.copyOf(this.data, i);
        } else {
            this.leftOver = null;
        }
        this.currentLastBytePos = -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private int getNewLineMatchByteCount(byte[] bArr, int i) {
        for (byte[] bArr2 : ReversedLinesFileReader.access$400(this.this$0)) {
            boolean z = true;
            for (int length = bArr2.length - 1; length >= 0; length--) {
                int length2 = (i + length) - (bArr2.length - 1);
                z &= length2 >= 0 && bArr[length2] == bArr2[length];
            }
            if (z) {
                return bArr2.length;
            }
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private String readLine() {
        String str;
        byte[] bArr;
        boolean z = this.partNumber == 1;
        int iAccess$700 = this.currentLastBytePos;
        while (true) {
            if (iAccess$700 > -1) {
                if (z || iAccess$700 >= ReversedLinesFileReader.access$500(this.this$0)) {
                    int newLineMatchByteCount = getNewLineMatchByteCount(this.data, iAccess$700);
                    if (newLineMatchByteCount > 0) {
                        int i = iAccess$700 + 1;
                        int i2 = (this.currentLastBytePos - i) + 1;
                        if (i2 < 0) {
                            j1.i.l(ai.onnxruntime.a.e(i2, "Unexpected negative line length="));
                            return null;
                        }
                        str = new String(Arrays.copyOfRange(this.data, i, i2 + i), ReversedLinesFileReader.access$600(this.this$0));
                        this.currentLastBytePos = iAccess$700 - newLineMatchByteCount;
                        break;
                    }
                    iAccess$700 -= ReversedLinesFileReader.access$700(this.this$0);
                    if (iAccess$700 < 0) {
                        createLeftOver();
                    }
                } else {
                    createLeftOver();
                }
            }
            str = null;
            break;
        }
        if (!z || (bArr = this.leftOver) == null) {
            return str;
        }
        String str2 = new String(bArr, ReversedLinesFileReader.access$600(this.this$0));
        this.leftOver = null;
        return str2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private ReversedLinesFileReader$FilePart rollOver() {
        if (this.currentLastBytePos > -1) {
            ai.onnxruntime.b.b(this.currentLastBytePos, "Current currentLastCharPos unexpectedly positive... last readLine() should have returned something! currentLastCharPos=");
            return null;
        }
        long j = this.partNumber;
        if (j > 1) {
            ReversedLinesFileReader reversedLinesFileReader = this.this$0;
            return new ReversedLinesFileReader$FilePart(reversedLinesFileReader, j - 1, ReversedLinesFileReader.access$200(reversedLinesFileReader), this.leftOver);
        }
        byte[] bArr = this.leftOver;
        if (bArr == null) {
            return null;
        }
        j1.i.l("Unexpected leftover of the last block: leftOverOfThisFilePart=".concat(new String(bArr, ReversedLinesFileReader.access$600(this.this$0))));
        return null;
    }

    public /* synthetic */ ReversedLinesFileReader$FilePart(ReversedLinesFileReader reversedLinesFileReader, long j, int i, byte[] bArr, ReversedLinesFileReader$1 reversedLinesFileReader$1) {
        this(reversedLinesFileReader, j, i, bArr);
    }
}
