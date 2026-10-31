package org.apache.commons.io.output;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import org.apache.commons.io.build.AbstractStreamBuilder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class WriterOutputStream$Builder extends AbstractStreamBuilder<WriterOutputStream, WriterOutputStream$Builder> {
    private CharsetDecoder charsetDecoder = getCharset().newDecoder();
    private boolean writeImmediately;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CharsetDecoder access$100(WriterOutputStream$Builder writerOutputStream$Builder) {
        return writerOutputStream$Builder.charsetDecoder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ boolean access$200(WriterOutputStream$Builder writerOutputStream$Builder) {
        return writerOutputStream$Builder.writeImmediately;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public WriterOutputStream get() {
        return new WriterOutputStream(this, (WriterOutputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractStreamBuilder
    public WriterOutputStream$Builder setCharset(Charset charset) {
        super.setCharset(charset);
        this.charsetDecoder = getCharset().newDecoder();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WriterOutputStream$Builder setCharsetDecoder(CharsetDecoder charsetDecoder) {
        if (charsetDecoder == null) {
            charsetDecoder = getCharsetDefault().newDecoder();
        }
        this.charsetDecoder = charsetDecoder;
        super.setCharset(charsetDecoder.charset());
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public WriterOutputStream$Builder setWriteImmediately(boolean z) {
        this.writeImmediately = z;
        return this;
    }

    @Override // org.apache.commons.io.function.IOSupplier
    public /* bridge */ /* synthetic */ Object get() {
        return get();
    }

    @Override // org.apache.commons.io.build.AbstractStreamBuilder
    public /* bridge */ /* synthetic */ AbstractStreamBuilder setCharset(Charset charset) {
        return setCharset(charset);
    }

    @Override // org.apache.commons.io.build.AbstractStreamBuilder
    public /* bridge */ /* synthetic */ AbstractStreamBuilder setCharset(String str) {
        return setCharset(str);
    }

    @Override // org.apache.commons.io.build.AbstractStreamBuilder
    public WriterOutputStream$Builder setCharset(String str) {
        super.setCharset(str);
        this.charsetDecoder = getCharset().newDecoder();
        return this;
    }
}
