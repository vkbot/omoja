package kotlin.p118io.encoding;

import ai.onnxruntime.AbstractC0074a;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.collections.ArraysKt;
import kotlin.text.C2174b;
import p099j1.C1929i;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
@ExperimentalEncodingApi
@Metadata(m3158d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u000b\b\u0003\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\b\u0010\u0014\u001a\u00020\u000fH\u0016J \u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016J(\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J \u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0002J\b\u0010 \u001a\u00020\u0019H\u0002J\b\u0010!\u001a\u00020\u0019H\u0002J\u0010\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\u000fH\u0002J\b\u0010#\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u00020\u000f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013¨\u0006$"}, m3159d2 = {"Lkotlin/io/encoding/DecodeInputStream;", "Ljava/io/InputStream;", "input", "base64", "Lkotlin/io/encoding/Base64;", "<init>", "(Ljava/io/InputStream;Lkotlin/io/encoding/Base64;)V", "isClosed", "", "isEOF", "singleByteBuffer", "", "symbolBuffer", "byteBuffer", "byteBufferStartIndex", "", "byteBufferEndIndex", "byteBufferLength", "getByteBufferLength", "()I", "read", "destination", TypedValues.CycleType.S_WAVE_OFFSET, "length", "close", "", "decodeSymbolBufferInto", "dst", "dstOffset", "dstEndIndex", "symbolBufferLength", "copyByteBufferInto", "resetByteBufferIfEmpty", "shiftByteBufferToStartIfNeeded", "handlePaddingSymbol", "readNextSymbol", "kotlin-stdlib"}, m3160k = 1, m3161mv = {2, 2, 0}, m3163xi = ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE)
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

    public DecodeInputStream(InputStream inputStream, Base64 base64) {
        inputStream.getClass();
        base64.getClass();
        this.input = inputStream;
        this.base64 = base64;
        this.singleByteBuffer = new byte[1];
        this.symbolBuffer = new byte[1024];
        this.byteBuffer = new byte[1024];
    }

    private final void copyByteBufferInto(byte[] dst, int dstOffset, int length) {
        byte[] bArr = this.byteBuffer;
        int i10 = this.byteBufferStartIndex;
        ArraysKt.copyInto(bArr, dst, dstOffset, i10, i10 + length);
        this.byteBufferStartIndex += length;
        resetByteBufferIfEmpty();
    }

    private final int decodeSymbolBufferInto(byte[] dst, int dstOffset, int dstEndIndex, int symbolBufferLength) {
        int i10 = this.byteBufferEndIndex;
        this.byteBufferEndIndex = i10 + this.base64.decodeIntoByteArray(this.symbolBuffer, this.byteBuffer, i10, 0, symbolBufferLength);
        int iMin = Math.min(getByteBufferLength(), dstEndIndex - dstOffset);
        copyByteBufferInto(dst, dstOffset, iMin);
        shiftByteBufferToStartIfNeeded();
        return iMin;
    }

    private final int getByteBufferLength() {
        return this.byteBufferEndIndex - this.byteBufferStartIndex;
    }

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

    private final int readNextSymbol() throws IOException {
        int i10;
        if (!this.base64.getIsMimeScheme()) {
            return this.input.read();
        }
        do {
            i10 = this.input.read();
            if (i10 == -1) {
                break;
            }
        } while (!Base64Kt.isInMimeAlphabet(i10));
        return i10;
    }

    private final void resetByteBufferIfEmpty() {
        if (this.byteBufferStartIndex == this.byteBufferEndIndex) {
            this.byteBufferStartIndex = 0;
            this.byteBufferEndIndex = 0;
        }
    }

    private final void shiftByteBufferToStartIfNeeded() {
        byte[] bArr = this.byteBuffer;
        int length = bArr.length;
        int i10 = this.byteBufferEndIndex;
        if ((this.symbolBuffer.length / 4) * 3 > length - i10) {
            ArraysKt.copyInto(bArr, bArr, 0, this.byteBufferStartIndex, i10);
            this.byteBufferEndIndex -= this.byteBufferStartIndex;
            this.byteBufferStartIndex = 0;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.isClosed) {
            return;
        }
        this.isClosed = true;
        this.input.close();
    }

    @Override // java.io.InputStream
    public int read(byte[] destination, int offset, int length) throws IOException {
        int i10;
        boolean z9;
        boolean z10;
        destination.getClass();
        if (offset < 0 || length < 0 || (i10 = offset + length) > destination.length) {
            C2174b.m3446a(AbstractC0074a.m171v("offset: ", offset, length, ", length: ", ", buffer size: "), destination.length);
            return 0;
        }
        if (this.isClosed) {
            C2467b.m3820A("The input stream is closed.");
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
            z9 = this.isEOF;
            if (z9 || byteBufferLength <= 0) {
                break;
            }
            int iMin = Math.min(this.symbolBuffer.length, byteBufferLength);
            int iHandlePaddingSymbol = 0;
            while (true) {
                z10 = this.isEOF;
                if (z10 || iHandlePaddingSymbol >= iMin) {
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
            if (!z10 && iHandlePaddingSymbol != iMin) {
                C1929i.m3030l("Check failed.");
                return 0;
            }
            byteBufferLength -= iHandlePaddingSymbol;
            iDecodeSymbolBufferInto += decodeSymbolBufferInto(destination, iDecodeSymbolBufferInto, i10, iHandlePaddingSymbol);
        }
        if (iDecodeSymbolBufferInto == offset && z9) {
            return -1;
        }
        return iDecodeSymbolBufferInto - offset;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.byteBufferStartIndex;
        if (i10 < this.byteBufferEndIndex) {
            int i11 = this.byteBuffer[i10] & UByte.MAX_VALUE;
            this.byteBufferStartIndex = i10 + 1;
            resetByteBufferIfEmpty();
            return i11;
        }
        int i12 = read(this.singleByteBuffer, 0, 1);
        if (i12 == -1) {
            return -1;
        }
        if (i12 == 1) {
            return this.singleByteBuffer[0] & UByte.MAX_VALUE;
        }
        C1929i.m3030l("Unreachable");
        return 0;
    }
}
