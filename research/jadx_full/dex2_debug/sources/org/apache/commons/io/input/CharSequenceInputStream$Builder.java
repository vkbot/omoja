package org.apache.commons.io.input;

import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import org.apache.commons.io.build.AbstractStreamBuilder;
import org.apache.commons.io.charset.CharsetEncoders;
import org.apache.commons.io.function.Uncheck;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class CharSequenceInputStream$Builder extends AbstractStreamBuilder<CharSequenceInputStream, CharSequenceInputStream$Builder> {
    private CharsetEncoder charsetEncoder = CharSequenceInputStream.access$000(getCharset());

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CharsetEncoder access$200(CharSequenceInputStream$Builder charSequenceInputStream$Builder) {
        return charSequenceInputStream$Builder.charsetEncoder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CharSequenceInputStream b(CharSequenceInputStream$Builder charSequenceInputStream$Builder) {
        return charSequenceInputStream$Builder.lambda$get$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ CharsetEncoder c(CharSequenceInputStream$Builder charSequenceInputStream$Builder) {
        return charSequenceInputStream$Builder.lambda$setCharsetEncoder$1();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ CharSequenceInputStream lambda$get$0() {
        return new CharSequenceInputStream(this, (CharSequenceInputStream$1) null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private /* synthetic */ CharsetEncoder lambda$setCharsetEncoder$1() {
        return CharSequenceInputStream.access$000(getCharsetDefault());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.function.IOSupplier
    public CharSequenceInputStream get() {
        return (CharSequenceInputStream) Uncheck.get(new d(this, 1));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharsetEncoder getCharsetEncoder() {
        return this.charsetEncoder;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.build.AbstractStreamBuilder
    public CharSequenceInputStream$Builder setCharset(Charset charset) {
        super.setCharset(charset);
        this.charsetEncoder = CharSequenceInputStream.access$000(getCharset());
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public CharSequenceInputStream$Builder setCharsetEncoder(CharsetEncoder charsetEncoder) {
        CharsetEncoder charsetEncoder2 = CharsetEncoders.toCharsetEncoder(charsetEncoder, new kotlin.streams.jdk8.a(1, this));
        this.charsetEncoder = charsetEncoder2;
        super.setCharset(charsetEncoder2.charset());
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
}
