package kotlin.io.encoding;

import ai.onnxruntime.a;
import androidx.constraintlayout.core.motion.utils.TypedValues$CycleType;
import androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$Table;
import j1.i;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.text.b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
@ExperimentalEncodingApi
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0014\u001a\u00020\u000fH\u0016J \u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J(\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J \u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0002J\b\u0010 \u001a\u00020\u0019H\u0002J\b\u0010!\u001a\u00020\u0019H\u0002J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J\b\u0010#\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006$"}, d2 = {"Lkotlin/io/encoding/DecodeInputStream;", "Ljava/io/InputStream;", "input", "base64", "Lkotlin/io/encoding/Base64;", "<init>", "(Ljava/io/InputStream;Lkotlin/io/encoding/Base64;)V", "isClosed", "", "isEOF", "singleByteBuffer", "", "symbolBuffer", "byteBuffer", "byteBufferStartIndex", "", "byteBufferEndIndex", "byteBufferLength", "getByteBufferLength", "()I", "read", "destination", TypedValues$CycleType.S_WAVE_OFFSET, "length", "close", "", "decodeSymbolBufferInto", "dst", "dstOffset", "dstEndIndex", "symbolBufferLength", "copyByteBufferInto", "resetByteBufferIfEmpty", "shiftByteBufferToStartIfNeeded", "handlePaddingSymbol", "readNextSymbol", "kotlin-stdlib"}, k = 1, mv = {2, 2, 0}, xi = ConstraintLayout$LayoutParams$Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
final class DecodeInputStream extends InputStream {
    private final Base64 base64;
    private final byte[] byteBuffer;
    private int byteBufferEndIndex;
    private int byteBufferStartIndex;
    private final InputStream input;
    private boolean isClosed;
    private boolean isEOF;
    private final byte[] singleByteBuffer;
    private final byte[] symbolBuffer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public DecodeInputStream(InputStream inputStream, Base64 base64) {
        inputStream.getClass();
        base64.getClass();
        this.input = inputStream;
        this.base64 = base64;
        this.singleByteBuffer = new byte[1];
        this.symbolBuffer = new byte[1024];
        this.byteBuffer = new byte[1024];
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void copyByteBufferInto(byte[] dst, int dstOffset, int length) {
        byte[] bArr = this.byteBuffer;
        int i9 = this.byteBufferStartIndex;
        ArraysKt.copyInto(bArr, dst, dstOffset, i9, i9 + length);
        this.byteBufferStartIndex += length;
        resetByteBufferIfEmpty();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int decodeSymbolBufferInto(byte[] dst, int dstOffset, int dstEndIndex, int symbolBufferLength) {
        int i9 = this.byteBufferEndIndex;
        this.byteBufferEndIndex = i9 + this.base64.decodeIntoByteArray(this.symbolBuffer, this.byteBuffer, i9, 0, symbolBufferLength);
        int iMin = Math.min(getByteBufferLength(), dstEndIndex - dstOffset);
        copyByteBufferInto(dst, dstOffset, iMin);
        shiftByteBufferToStartIfNeeded();
        return iMin;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int getByteBufferLength() {
        return this.byteBufferEndIndex - this.byteBufferStartIndex;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int handlePaddingSymbol(int symbolBufferLength) throws IOException {
        this.symbolBuffer[symbolBufferLength] = Base64.padSymbol;
        if ((symbolBufferLength & 3) != 2) {
            return symbolBufferLength + 1;
        }
        int nextSymbol = readNextSymbol();
        if (nextSymbol >= 0) {
            this.symbolBuffer[symbolBufferLength + 1] = (byte) nextSymbol;
        }
        return symbolBufferLength + 2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final int readNextSymbol() throws IOException {
        int i9;
        if (!this.base64.getIsMimeScheme()) {
            return this.input.read();
        }
        do {
            i9 = this.input.read();
            if (i9 == -1) {
                break;
            }
        } while (!Base64Kt.isInMimeAlphabet(i9));
        return i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void resetByteBufferIfEmpty() {
        if (this.byteBufferStartIndex == this.byteBufferEndIndex) {
            this.byteBufferStartIndex = 0;
            this.byteBufferEndIndex = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private final void shiftByteBufferToStartIfNeeded() {
        byte[] bArr = this.byteBuffer;
        int length = bArr.length;
        int i9 = this.byteBufferEndIndex;
        if ((this.symbolBuffer.length / 4) * 3 > length - i9) {
            ArraysKt.copyInto(bArr, bArr, 0, this.byteBufferStartIndex, i9);
            this.byteBufferEndIndex -= this.byteBufferStartIndex;
            this.byteBufferStartIndex = 0;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.isClosed) {
            return;
        }
        this.isClosed = true;
        this.input.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read(byte[] destination, int offset, int length) throws IOException {
        int i9;
        boolean z8;
        boolean z9;
        destination.getClass();
        if (offset < 0 || length < 0 || (i9 = offset + length) > destination.length) {
            b.a(a.v("offset: ", offset, length, ", length: ", ", buffer size: "), destination.length);
            return 0;
        }
        if (this.isClosed) {
            n0.b.A("The input stream is closed.");
            return 0;
        }
        if (this.isEOF) {
            return -1;
        }
        if (length == 0) {
            return 0;
        }
        if (getByteBufferLength() >= length) {
            copyByteBufferInto(destination, offset, length);
            return length;
        }
        int byteBufferLength = (((length - getByteBufferLength()) + 2) / 3) * 4;
        int iDecodeSymbolBufferInto = offset;
        while (true) {
            z8 = this.isEOF;
            if (z8 || byteBufferLength <= 0) {
                break;
            }
            int iMin = Math.min(this.symbolBuffer.length, byteBufferLength);
            int iHandlePaddingSymbol = 0;
            while (true) {
                z9 = this.isEOF;
                if (z9 || iHandlePaddingSymbol >= iMin) {
                    break;
                }
                int nextSymbol = readNextSymbol();
                if (nextSymbol == -1) {
                    this.isEOF = true;
                } else if (nextSymbol != 61) {
                    this.symbolBuffer[iHandlePaddingSymbol] = (byte) nextSymbol;
                    iHandlePaddingSymbol++;
                } else {
                    iHandlePaddingSymbol = handlePaddingSymbol(iHandlePaddingSymbol);
                    this.isEOF = true;
                }
            }
            if (!z9 && iHandlePaddingSymbol != iMin) {
                i.l("Check failed.");
                return 0;
            }
            byteBufferLength -= iHandlePaddingSymbol;
            iDecodeSymbolBufferInto += decodeSymbolBufferInto(destination, iDecodeSymbolBufferInto, i9, iHandlePaddingSymbol);
        }
        if (iDecodeSymbolBufferInto == offset && z8) {
            return -1;
        }
        return iDecodeSymbolBufferInto - offset;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i9 = this.byteBufferStartIndex;
        if (i9 < this.byteBufferEndIndex) {
            int i10 = this.byteBuffer[i9] & UByte.MAX_VALUE;
            this.byteBufferStartIndex = i9 + 1;
            resetByteBufferIfEmpty();
            return i10;
        }
        int i11 = read(this.singleByteBuffer, 0, 1);
        if (i11 == -1) {
            return -1;
        }
        if (i11 == 1) {
            return this.singleByteBuffer[0] & UByte.MAX_VALUE;
        }
        i.l("Unreachable");
        return 0;
    }
}
