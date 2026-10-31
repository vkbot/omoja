package org.apache.commons.p161io.charset;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class CharsetDecoders {
    private CharsetDecoders() {
    }

    public static CharsetDecoder toCharsetDecoder(CharsetDecoder charsetDecoder) {
        return charsetDecoder != null ? charsetDecoder : Charset.defaultCharset().newDecoder();
    }
}
