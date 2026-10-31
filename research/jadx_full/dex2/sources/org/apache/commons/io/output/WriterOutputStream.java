package org.apache.commons.io.output;

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
import org.apache.commons.io.Charsets;
import org.apache.commons.io.IOUtils;
import org.apache.commons.io.charset.CharsetDecoders;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class WriterOutputStream extends OutputStream {
    private static final int BUFFER_SIZE = 8192;
    private final CharsetDecoder decoder;
    private final ByteBuffer decoderIn;
    private final CharBuffer decoderOut;
    private final boolean writeImmediately;
    private final Writer writer;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Deprecated
    public WriterOutputStream(Writer writer, CharsetDecoder charsetDecoder, int i, boolean z) {
        this.decoderIn = ByteBuffer.allocate(128);
        checkIbmJdkWithBrokenUTF16(CharsetDecoders.toCharsetDecoder(charsetDecoder).charset());
        this.writer = writer;
        this.decoder = CharsetDecoders.toCharsetDecoder(charsetDecoder);
        this.writeImmediately = z;
        this.decoderOut = CharBuffer.allocate(i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static WriterOutputStream$Builder builder() {
        return new WriterOutputStream$Builder();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static void checkIbmJdkWithBrokenUTF16(Charset charset) {
        if (StandardCharsets.UTF_16.name().equals(charset.name())) {
            byte[] bytes = "vés".getBytes(charset);
            CharsetDecoder charsetDecoderNewDecoder = charset.newDecoder();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            CharBuffer charBufferAllocate = CharBuffer.allocate(3);
            int length = bytes.length;
            int i = 0;
            while (i < length) {
                byteBufferAllocate.put(bytes[i]);
                byteBufferAllocate.flip();
                try {
                    charsetDecoderNewDecoder.decode(byteBufferAllocate, charBufferAllocate, i == length + (-1));
                    byteBufferAllocate.compact();
                    i++;
                } catch (IllegalArgumentException unused) {
                    androidx.navigation.b.g("UTF-16 requested when running on an IBM JDK with broken UTF-16 support. Please find a JDK that supports UTF-16 if you intend to use UF-16 with WriterOutputStream");
                    return;
                }
            }
            charBufferAllocate.rewind();
            if ("vés".equals(charBufferAllocate.toString())) {
                return;
            }
            androidx.navigation.b.g("UTF-16 requested when running on an IBM JDK with broken UTF-16 support. Please find a JDK that supports UTF-16 if you intend to use UF-16 with WriterOutputStream");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void flushOutput() throws IOException {
        if (this.decoderOut.position() > 0) {
            this.writer.write(this.decoderOut.array(), 0, this.decoderOut.position());
            this.decoderOut.rewind();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private void processInput(boolean z) throws IOException {
        CoderResult coderResultDecode;
        this.decoderIn.flip();
        while (true) {
            coderResultDecode = this.decoder.decode(this.decoderIn, this.decoderOut, z);
            if (!coderResultDecode.isOverflow()) {
                break;
            } else {
                flushOutput();
            }
        }
        if (coderResultDecode.isUnderflow()) {
            this.decoderIn.compact();
        } else {
            n0.b.A("Unexpected coder result");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        processInput(true);
        flushOutput();
        this.writer.close();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        flushOutput();
        this.writer.flush();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        IOUtils.checkFromIndexSize(bArr, i, i2);
        while (i2 > 0) {
            int iMin = Math.min(i2, this.decoderIn.remaining());
            this.decoderIn.put(bArr, i, iMin);
            processInput(false);
            i2 -= iMin;
            i += iMin;
        }
        if (this.writeImmediately) {
            flushOutput();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    private WriterOutputStream(WriterOutputStream$Builder writerOutputStream$Builder) {
        this(writerOutputStream$Builder.getWriter(), WriterOutputStream$Builder.access$100(writerOutputStream$Builder), writerOutputStream$Builder.getBufferSize(), WriterOutputStream$Builder.access$200(writerOutputStream$Builder));
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
    public WriterOutputStream(Writer writer, Charset charset, int i, boolean z) {
        CharsetDecoder charsetDecoderNewDecoder = Charsets.toCharset(charset).newDecoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPLACE;
        this(writer, charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).replaceWith("?"), i, z);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, CharsetDecoder charsetDecoder) {
        this(writer, charsetDecoder, 8192, false);
    }

    public /* synthetic */ WriterOutputStream(WriterOutputStream$Builder writerOutputStream$Builder, WriterOutputStream$1 writerOutputStream$1) {
        this(writerOutputStream$Builder);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, String str) {
        this(writer, str, 8192, false);
    }

    @Deprecated
    public WriterOutputStream(Writer writer, String str, int i, boolean z) {
        this(writer, Charsets.toCharset(str), i, z);
    }
}
