package org.apache.commons.io.input;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class CharSequenceInputStream extends InputStream {
    private static final int NO_MARK = -1;
    private final ByteBuffer bBuf;
    private int bBufMark;
    private final CharBuffer cBuf;
    private int cBufMark;
    private final CharsetEncoder charsetEncoder;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private CharSequenceInputStream(CharSequenceInputStream$Builder charSequenceInputStream$Builder) {
        this.charsetEncoder = CharSequenceInputStream$Builder.access$200(charSequenceInputStream$Builder);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(ReaderInputStream.checkMinBufferSize(CharSequenceInputStream$Builder.access$200(charSequenceInputStream$Builder), charSequenceInputStream$Builder.getBufferSize()));
        this.bBuf = byteBufferAllocate;
        byteBufferAllocate.flip();
        CharBuffer charBufferWrap = CharBuffer.wrap((CharSequence) Uncheck.get(new d(charSequenceInputStream$Builder, 0)));
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CharsetEncoder access$000(Charset charset) {
        return newEncoder(charset);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CharSequence b(CharSequenceInputStream$Builder charSequenceInputStream$Builder) {
        return lambda$new$0(charSequenceInputStream$Builder);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static CharSequenceInputStream$Builder builder() {
        return new CharSequenceInputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void fillBuffer() throws CharacterCodingException {
        this.bBuf.compact();
        CoderResult coderResultEncode = this.charsetEncoder.encode(this.cBuf, this.bBuf, true);
        if (coderResultEncode.isError()) {
            coderResultEncode.throwException();
        }
        this.bBuf.flip();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ CharSequence lambda$new$0(CharSequenceInputStream$Builder charSequenceInputStream$Builder) {
        return charSequenceInputStream$Builder.getCharSequence();
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
        return this.bBuf.remaining();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ByteBuffer byteBuffer = this.bBuf;
        byteBuffer.position(byteBuffer.limit());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharsetEncoder getCharsetEncoder() {
        return this.charsetEncoder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.cBufMark = this.cBuf.position();
        this.bBufMark = this.bBuf.position();
        this.cBuf.mark();
        this.bBuf.mark();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws CharacterCodingException {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        int i3 = 0;
        if (i2 == 0) {
            return 0;
        }
        if (!this.bBuf.hasRemaining() && !this.cBuf.hasRemaining()) {
            return -1;
        }
        while (i2 > 0) {
            if (!this.bBuf.hasRemaining()) {
                fillBuffer();
                if (!this.bBuf.hasRemaining() && !this.cBuf.hasRemaining()) {
                    break;
                }
            } else {
                int iMin = Math.min(this.bBuf.remaining(), i2);
                this.bBuf.get(bArr, i, iMin);
                i += iMin;
                i2 -= iMin;
                i3 += iMin;
            }
        }
        if (i3 != 0 || this.cBuf.hasRemaining()) {
            return i3;
        }
        return -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.InputStream
    public long skip(long j) throws CharacterCodingException {
        long j2 = 0;
        while (j > 0 && available() > 0) {
            read();
            j--;
            j2++;
        }
        return j2;
    }

    public /* synthetic */ CharSequenceInputStream(CharSequenceInputStream$Builder charSequenceInputStream$Builder, CharSequenceInputStream$1 charSequenceInputStream$1) {
        this(charSequenceInputStream$Builder);
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, Charset charset) {
        this(charSequence, charset, 8192);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v1, resolved type: B */
    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, Charset charset, int i) {
        this(((CharSequenceInputStream$Builder) builder().setCharSequence(charSequence)).setCharset(charset).setBufferSize(i));
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, String str) {
        this(charSequence, str, 8192);
    }

    @Deprecated
    public CharSequenceInputStream(CharSequence charSequence, String str, int i) {
        this(charSequence, Charsets.toCharset(str), i);
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
        return this.bBuf.get() & 255;
    }
}
