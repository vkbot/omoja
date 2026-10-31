package org.apache.commons.p161io.charset;

import androidx.emoji2.text.flatbuffer.C0489a;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.util.function.Supplier;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class CharsetEncoders {
    private CharsetEncoders() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ CharsetEncoder lambda$toCharsetEncoder$0() {
        return Charset.defaultCharset().newEncoder();
    }

    public static CharsetEncoder toCharsetEncoder(CharsetEncoder charsetEncoder) {
        return toCharsetEncoder(charsetEncoder, new C0489a(3));
    }

    public static CharsetEncoder toCharsetEncoder(CharsetEncoder charsetEncoder, Supplier<CharsetEncoder> supplier) {
        return charsetEncoder != null ? charsetEncoder : supplier.get();
    }
}
