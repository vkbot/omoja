package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Utf8Old$Cache {
    final CharsetDecoder decoder;
    final CharsetEncoder encoder;
    CharSequence lastInput = null;
    ByteBuffer lastOutput = null;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Utf8Old$Cache() {
        Charset charset = StandardCharsets.UTF_8;
        this.encoder = charset.newEncoder();
        this.decoder = charset.newDecoder();
    }
}
