package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.charset.CharsetEncoders;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class ReaderInputStream extends AbstractInputStream {
    private final CharsetEncoder charsetEncoder;
    private final CharBuffer encoderIn;
    private final ByteBuffer encoderOut;
    private boolean endOfInput;
    private CoderResult lastCoderResult;
    private final Reader reader;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public ReaderInputStream(Reader reader, CharsetEncoder charsetEncoder, int i) {
        this.reader = reader;
        CharsetEncoder charsetEncoder2 = CharsetEncoders.toCharsetEncoder(charsetEncoder);
        this.charsetEncoder = charsetEncoder2;
        CharBuffer charBufferAllocate = CharBuffer.allocate(checkMinBufferSize(charsetEncoder2, i));
        this.encoderIn = charBufferAllocate;
        charBufferAllocate.flip();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(128);
        this.encoderOut = byteBufferAllocate;
        byteBufferAllocate.flip();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CharsetEncoder access$000(Charset charset) {
        return newEncoder(charset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static ReaderInputStream$Builder builder() {
        return new ReaderInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int checkMinBufferSize(CharsetEncoder charsetEncoder, int i) {
        float fMinBufferSize = minBufferSize(charsetEncoder);
        if (i >= fMinBufferSize) {
            return i;
        }
        n0.b.v("Buffer size %,d must be at least %s for a CharsetEncoder %s.", new Object[]{Integer.valueOf(i), Float.valueOf(fMinBufferSize), charsetEncoder.charset().displayName()});
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fillBuffer() throws IOException {
        CoderResult coderResult;
        boolean z = this.endOfInput;
        if (z) {
            return;
        }
        if (!z && ((coderResult = this.lastCoderResult) == null || coderResult.isUnderflow())) {
            this.encoderIn.compact();
            int iPosition = this.encoderIn.position();
            int i = this.reader.read(this.encoderIn.array(), iPosition, this.encoderIn.remaining());
            if (i == -1) {
                this.endOfInput = true;
            } else {
                this.encoderIn.position(iPosition + i);
            }
            this.encoderIn.flip();
        }
        this.encoderOut.compact();
        this.lastCoderResult = this.charsetEncoder.encode(this.encoderIn, this.encoderOut, this.endOfInput);
        if (this.endOfInput) {
            this.lastCoderResult = this.charsetEncoder.flush(this.encoderOut);
        }
        if (this.lastCoderResult.isError()) {
            this.lastCoderResult.throwException();
        }
        this.encoderOut.flip();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static float minBufferSize(CharsetEncoder charsetEncoder) {
        return charsetEncoder.maxBytesPerChar() * 2.0f;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static CharsetEncoder newEncoder(Charset charset) {
        CharsetEncoder charsetEncoderNewEncoder = Charsets.toCharset(charset).newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        return charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int available() {
        if (this.encoderOut.hasRemaining()) {
            return this.encoderOut.remaining();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.input.AbstractInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.reader.close();
        super.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharsetEncoder getCharsetEncoder() {
        return this.charsetEncoder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        while (i2 > 0) {
            if (this.encoderOut.hasRemaining()) {
                int iMin = Math.min(this.encoderOut.remaining(), i2);
                this.encoderOut.get(bArr, i, iMin);
                i += iMin;
                i2 -= iMin;
                i3 += iMin;
            } else {
                if (this.endOfInput) {
                    break;
                }
                fillBuffer();
            }
        }
        if (i3 == 0 && this.endOfInput) {
            return -1;
        }
        return i3;
    }

    private ReaderInputStream(ReaderInputStream$Builder readerInputStream$Builder) {
        this(readerInputStream$Builder.getReader(), ReaderInputStream$Builder.access$200(readerInputStream$Builder), readerInputStream$Builder.getBufferSize());
    }

    @Deprecated
    public ReaderInputStream(Reader reader) {
        this(reader, Charset.defaultCharset());
    }

    @Deprecated
    public ReaderInputStream(Reader reader, Charset charset) {
        this(reader, charset, 8192);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public ReaderInputStream(Reader reader, Charset charset, int i) {
        CharsetEncoder charsetEncoderNewEncoder = Charsets.toCharset(charset).newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        this(reader, charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction), i);
    }

    @Deprecated
    public ReaderInputStream(Reader reader, CharsetEncoder charsetEncoder) {
        this(reader, charsetEncoder, 8192);
    }

    public /* synthetic */ ReaderInputStream(ReaderInputStream$Builder readerInputStream$Builder, ReaderInputStream$1 readerInputStream$1) {
        this(readerInputStream$Builder);
    }

    @Deprecated
    public ReaderInputStream(Reader reader, String str) {
        this(reader, str, 8192);
    }

    @Deprecated
    public ReaderInputStream(Reader reader, String str, int i) {
        this(reader, Charsets.toCharset(str), i);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        checkOpen();
        while (!this.encoderOut.hasRemaining()) {
            fillBuffer();
            if (this.endOfInput && !this.encoderOut.hasRemaining()) {
                return -1;
            }
        }
        return this.encoderOut.get() & 255;
    }
}
