package org.apache.commons.p161io.input;

import java.io.IOException;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import kotlin.UByte;
import kotlin.streams.jdk8.C2167a;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.charset.CharsetEncoders;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class ReaderInputStream extends AbstractInputStream {
    private final CharsetEncoder charsetEncoder;
    private final CharBuffer encoderIn;
    private final ByteBuffer encoderOut;
    private boolean endOfInput;
    private CoderResult lastCoderResult;
    private final Reader reader;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<ReaderInputStream, Builder> {
        private CharsetEncoder charsetEncoder = ReaderInputStream.newEncoder(getCharset());

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ CharsetEncoder lambda$setCharsetEncoder$0() {
            return ReaderInputStream.newEncoder(getCharsetDefault());
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public ReaderInputStream get() {
            return new ReaderInputStream(this);
        }

        public CharsetEncoder getCharsetEncoder() {
            return this.charsetEncoder;
        }

        @Override // org.apache.commons.p161io.build.AbstractStreamBuilder
        public Builder setCharset(Charset charset) {
            super.setCharset(charset);
            this.charsetEncoder = ReaderInputStream.newEncoder(getCharset());
            return this;
        }

        public Builder setCharsetEncoder(CharsetEncoder charsetEncoder) {
            CharsetEncoder charsetEncoder2 = CharsetEncoders.toCharsetEncoder(charsetEncoder, new C2167a(2, this));
            this.charsetEncoder = charsetEncoder2;
            super.setCharset(charsetEncoder2.charset());
            return this;
        }
    }

    @Deprecated
    public ReaderInputStream(Reader reader, CharsetEncoder charsetEncoder, int i10) {
        this.reader = reader;
        CharsetEncoder charsetEncoder2 = CharsetEncoders.toCharsetEncoder(charsetEncoder);
        this.charsetEncoder = charsetEncoder2;
        CharBuffer charBufferAllocate = CharBuffer.allocate(checkMinBufferSize(charsetEncoder2, i10));
        this.encoderIn = charBufferAllocate;
        charBufferAllocate.flip();
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(128);
        this.encoderOut = byteBufferAllocate;
        byteBufferAllocate.flip();
    }

    public static Builder builder() {
        return new Builder();
    }

    public static int checkMinBufferSize(CharsetEncoder charsetEncoder, int i10) {
        float fMinBufferSize = minBufferSize(charsetEncoder);
        if (i10 >= fMinBufferSize) {
            return i10;
        }
        C2467b.m3832v("Buffer size %,d must be at least %s for a CharsetEncoder %s.", new Object[]{Integer.valueOf(i10), Float.valueOf(fMinBufferSize), charsetEncoder.charset().displayName()});
        return 0;
    }

    private void fillBuffer() throws IOException {
        CoderResult coderResult;
        boolean z9 = this.endOfInput;
        if (z9) {
            return;
        }
        if (!z9 && ((coderResult = this.lastCoderResult) == null || coderResult.isUnderflow())) {
            this.encoderIn.compact();
            int iPosition = this.encoderIn.position();
            int i10 = this.reader.read(this.encoderIn.array(), iPosition, this.encoderIn.remaining());
            if (i10 == -1) {
                this.endOfInput = true;
            } else {
                this.encoderIn.position(iPosition + i10);
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

    public static float minBufferSize(CharsetEncoder charsetEncoder) {
        return charsetEncoder.maxBytesPerChar() * 2.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CharsetEncoder newEncoder(Charset charset) {
        CharsetEncoder charsetEncoderNewEncoder = Charsets.toCharset(charset).newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        return charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    @Override // java.io.InputStream
    public int available() {
        if (this.encoderOut.hasRemaining()) {
            return this.encoderOut.remaining();
        }
        return 0;
    }

    @Override // org.apache.commons.p161io.input.AbstractInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.reader.close();
        super.close();
    }

    public CharsetEncoder getCharsetEncoder() {
        return this.charsetEncoder;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        int i12 = 0;
        if (i11 == 0) {
            return 0;
        }
        while (i11 > 0) {
            if (this.encoderOut.hasRemaining()) {
                int iMin = Math.min(this.encoderOut.remaining(), i11);
                this.encoderOut.get(bArr, i10, iMin);
                i10 += iMin;
                i11 -= iMin;
                i12 += iMin;
            } else {
                if (this.endOfInput) {
                    break;
                }
                fillBuffer();
            }
        }
        if (i12 == 0 && this.endOfInput) {
            return -1;
        }
        return i12;
    }

    private ReaderInputStream(Builder builder) {
        this(builder.getReader(), builder.charsetEncoder, builder.getBufferSize());
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
    public ReaderInputStream(Reader reader, Charset charset, int i10) {
        CharsetEncoder charsetEncoderNewEncoder = Charsets.toCharset(charset).newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        this(reader, charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction), i10);
    }

    @Deprecated
    public ReaderInputStream(Reader reader, CharsetEncoder charsetEncoder) {
        this(reader, charsetEncoder, 8192);
    }

    @Deprecated
    public ReaderInputStream(Reader reader, String str) {
        this(reader, str, 8192);
    }

    @Deprecated
    public ReaderInputStream(Reader reader, String str, int i10) {
        this(reader, Charsets.toCharset(str), i10);
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
        return this.encoderOut.get() & UByte.MAX_VALUE;
    }
}
