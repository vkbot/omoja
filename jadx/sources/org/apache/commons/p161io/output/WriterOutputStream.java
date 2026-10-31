package org.apache.commons.p161io.output;

import androidx.navigation.C0674b;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.StandardCharsets;
import org.apache.commons.p161io.Charsets;
import org.apache.commons.p161io.IOUtils;
import org.apache.commons.p161io.build.AbstractStreamBuilder;
import org.apache.commons.p161io.charset.CharsetDecoders;
import p142n0.C2467b;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public class WriterOutputStream extends OutputStream {
    private static final int BUFFER_SIZE = 8192;
    private final CharsetDecoder decoder;
    private final ByteBuffer decoderIn;
    private final CharBuffer decoderOut;
    private final boolean writeImmediately;
    private final Writer writer;

    @Deprecated
    public WriterOutputStream(Writer writer, CharsetDecoder charsetDecoder, int i10, boolean z9) {
        this.decoderIn = ByteBuffer.allocate(128);
        checkIbmJdkWithBrokenUTF16(CharsetDecoders.toCharsetDecoder(charsetDecoder).charset());
        this.writer = writer;
        this.decoder = CharsetDecoders.toCharsetDecoder(charsetDecoder);
        this.writeImmediately = z9;
        this.decoderOut = CharBuffer.allocate(i10);
    }

    public static Builder builder() {
        return new Builder();
    }

    private static void checkIbmJdkWithBrokenUTF16(Charset charset) {
        if (StandardCharsets.UTF_16.name().equals(charset.name())) {
            byte[] bytes = "vés".getBytes(charset);
            CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            CharBuffer charBufferAllocate = CharBuffer.allocate(3);
            int length = bytes.length;
            int i10 = 0;
            while (i10 < length) {
                byteBufferAllocate.put(bytes[i10]);
                byteBufferAllocate.flip();
                try {
                    charsetDecoderNewDecoder.decode(byteBufferAllocate, charBufferAllocate, i10 == length + (-1));
                    byteBufferAllocate.compact();
                    i10++;
                } catch (IllegalArgumentException unused) {
                    C0674b.m840g("UTF-16 requested when running on an IBM JDK with broken UTF-16 support. Please find a JDK that supports UTF-16 if you intend to use UF-16 with WriterOutputStream");
                    return;
                }
            }
            charBufferAllocate.rewind();
            if ("vés".equals(charBufferAllocate.toString())) {
                return;
            }
            C0674b.m840g("UTF-16 requested when running on an IBM JDK with broken UTF-16 support. Please find a JDK that supports UTF-16 if you intend to use UF-16 with WriterOutputStream");
        }
    }

    private void flushOutput() throws IOException {
        if (this.decoderOut.position() > 0) {
            this.writer.write(this.decoderOut.array(), 0, this.decoderOut.position());
            this.decoderOut.rewind();
        }
    }

    private void processInput(boolean z9) throws IOException {
        CoderResult coderResultDecode;
        this.decoderIn.flip();
        while (true) {
            coderResultDecode = this.decoder.decode(this.decoderIn, this.decoderOut, z9);
            if (!coderResultDecode.isOverflow()) {
                break;
            } else {
                flushOutput();
            }
        }
        if (coderResultDecode.isUnderflow()) {
            this.decoderIn.compact();
        } else {
            C2467b.m3820A("Unexpected coder result");
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        processInput(true);
        flushOutput();
        this.writer.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        flushOutput();
        this.writer.flush();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i10, i11);
        while (i11 > 0) {
            int iMin = Math.min(i11, this.decoderIn.remaining());
            this.decoderIn.put(bArr, i10, iMin);
            processInput(false);
            i11 -= iMin;
            i10 += iMin;
        }
        if (this.writeImmediately) {
            flushOutput();
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class Builder extends AbstractStreamBuilder<WriterOutputStream, Builder> {
        private CharsetDecoder charsetDecoder = getCharset().newDecoder();
        private boolean writeImmediately;

        @Override // org.apache.commons.p161io.function.IOSupplier
        public WriterOutputStream get() {
            return new WriterOutputStream(this);
        }

        @Override // org.apache.commons.p161io.build.AbstractStreamBuilder
        public Builder setCharset(Charset charset) {
            super.setCharset(charset);
            this.charsetDecoder = getCharset().newDecoder();
            return this;
        }

        public Builder setCharsetDecoder(CharsetDecoder charsetDecoder) {
            if (charsetDecoder == null) {
                charsetDecoder = getCharsetDefault().newDecoder();
            }
            this.charsetDecoder = charsetDecoder;
            super.setCharset(charsetDecoder.charset());
            return this;
        }

        public Builder setWriteImmediately(boolean z9) {
            this.writeImmediately = z9;
            return this;
        }

        @Override // org.apache.commons.p161io.build.AbstractStreamBuilder
        public Builder setCharset(String str) {
            super.setCharset(str);
            this.charsetDecoder = getCharset().newDecoder();
            return this;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        write(new byte[]{(byte) i10}, 0, 1);
    }

    private WriterOutputStream(Builder builder) {
        this(builder.getWriter(), builder.charsetDecoder, builder.getBufferSize(), builder.writeImmediately);
    }

    @Deprecated
    public WriterOutputStream(Writer writer) {
        this(writer, Charset.defaultCharset(), 8192, false);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, Charset charset) {
        this(writer, charset, 8192, false);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public WriterOutputStream(Writer writer, Charset charset, int i10, boolean z9) {
        CharsetDecoder charsetDecoderNewDecoder = Charsets.toCharset(charset).newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        this(writer, charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).replaceWith("?"), i10, z9);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, CharsetDecoder charsetDecoder) {
        this(writer, charsetDecoder, 8192, false);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, String str) {
        this(writer, str, 8192, false);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, String str, int i10, boolean z9) {
        this(writer, Charsets.toCharset(str), i10, z9);
    }
}
