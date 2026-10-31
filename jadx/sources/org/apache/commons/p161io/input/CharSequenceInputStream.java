package org.apache.commons.p161io.input;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
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
import org.apache.commons.p161io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class CharSequenceInputStream extends InputStream {
    private static final int NO_MARK = -1;
    private final ByteBuffer bBuf;
    private int bBufMark;
    private final CharBuffer cBuf;
    private int cBufMark;
    private final CharsetEncoder charsetEncoder;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<CharSequenceInputStream, Builder> {
        private CharsetEncoder charsetEncoder = CharSequenceInputStream.newEncoder(getCharset());

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ CharSequenceInputStream lambda$get$0() {
            return new CharSequenceInputStream(this);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ CharsetEncoder lambda$setCharsetEncoder$1() {
            return CharSequenceInputStream.newEncoder(getCharsetDefault());
        }

        @Override // org.apache.commons.p161io.function.IOSupplier
        public CharSequenceInputStream get() {
            return (CharSequenceInputStream) Uncheck.get(new C2874d(this, 1));
        }

        public CharsetEncoder getCharsetEncoder() {
            return this.charsetEncoder;
        }

        @Override // org.apache.commons.p161io.build.AbstractStreamBuilder
        public Builder setCharset(Charset charset) {
            super.setCharset(charset);
            this.charsetEncoder = CharSequenceInputStream.newEncoder(getCharset());
            return this;
        }

        public Builder setCharsetEncoder(CharsetEncoder charsetEncoder) {
            CharsetEncoder charsetEncoder2 = CharsetEncoders.toCharsetEncoder(charsetEncoder, new C2167a(1, this));
            this.charsetEncoder = charsetEncoder2;
            super.setCharset(charsetEncoder2.charset());
            return this;
        }
    }

    private CharSequenceInputStream(Builder builder) {
        this.charsetEncoder = builder.charsetEncoder;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(ReaderInputStream.checkMinBufferSize(builder.charsetEncoder, builder.getBufferSize()));
        this.bBuf = byteBufferAllocate;
        byteBufferAllocate.flip();
        CharBuffer charBufferWrap = CharBuffer.wrap((CharSequence) Uncheck.get(new C2874d(builder, 0)));
        this.cBuf = charBufferWrap;
        this.cBufMark = -1;
        this.bBufMark = -1;
        try {
            fillBuffer();
        } catch (CharacterCodingException unused) {
            byteBufferAllocate.clear();
            byteBufferAllocate.flip();
            charBufferWrap.rewind();
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    private void fillBuffer() throws CharacterCodingException {
        this.bBuf.compact();
        CoderResult coderResultEncode = this.charsetEncoder.encode(this.cBuf, this.bBuf, true);
        if (coderResultEncode.isError()) {
            coderResultEncode.throwException();
        }
        this.bBuf.flip();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CharsetEncoder newEncoder(Charset charset) {
        CharsetEncoder charsetEncoderNewEncoder = Charsets.toCharset(charset).newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        return charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
    }

    @Override // java.io.InputStream
    public int available() {
        return this.bBuf.remaining();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ByteBuffer byteBuffer = this.bBuf;
        byteBuffer.position(byteBuffer.limit());
    }

    public CharsetEncoder getCharsetEncoder() {
        return this.charsetEncoder;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i10) {
        this.cBufMark = this.cBuf.position();
        this.bBufMark = this.bBuf.position();
        this.cBuf.mark();
        this.bBuf.mark();
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws CharacterCodingException {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        int i12 = 0;
        if (i11 == 0) {
            return 0;
        }
        if (!this.bBuf.hasRemaining() && !this.cBuf.hasRemaining()) {
            return -1;
        }
        while (i11 > 0) {
            if (!this.bBuf.hasRemaining()) {
                fillBuffer();
                if (!this.bBuf.hasRemaining() && !this.cBuf.hasRemaining()) {
                    break;
                }
            } else {
                int iMin = Math.min(this.bBuf.remaining(), i11);
                this.bBuf.get(bArr, i10, iMin);
                i10 += iMin;
                i11 -= iMin;
                i12 += iMin;
            }
        }
        if (i12 != 0 || this.cBuf.hasRemaining()) {
            return i12;
        }
        return -1;
    }

    @Override // java.io.InputStream
    public synchronized void reset() {
        try {
            if (this.cBufMark != -1) {
                if (this.cBuf.position() != 0) {
                    this.charsetEncoder.reset();
                    this.cBuf.rewind();
                    this.bBuf.rewind();
                    this.bBuf.limit(0);
                    while (this.cBuf.position() < this.cBufMark) {
                        this.bBuf.rewind();
                        this.bBuf.limit(0);
                        fillBuffer();
                    }
                }
                if (this.cBuf.position() != this.cBufMark) {
                    throw new IllegalStateException("Unexpected CharBuffer position: actual=" + this.cBuf.position() + " expected=" + this.cBufMark);
                }
                this.bBuf.position(this.bBufMark);
                this.cBufMark = -1;
                this.bBufMark = -1;
            }
            mark(0);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws CharacterCodingException {
        long j11 = 0;
        while (j10 > 0 && available() > 0) {
            read();
            j10--;
            j11++;
        }
        return j11;
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, Charset charset) {
        this(charSequence, charset, 8192);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, Charset charset, int i10) {
        this(((Builder) builder().setCharSequence(charSequence)).setCharset(charset).setBufferSize(i10));
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, String str) {
        this(charSequence, str, 8192);
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, String str, int i10) {
        this(charSequence, Charsets.toCharset(str), i10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read() throws CharacterCodingException {
        while (!this.bBuf.hasRemaining()) {
            fillBuffer();
            if (!this.bBuf.hasRemaining() && !this.cBuf.hasRemaining()) {
                return -1;
            }
        }
        return this.bBuf.get() & UByte.MAX_VALUE;
    }
}
