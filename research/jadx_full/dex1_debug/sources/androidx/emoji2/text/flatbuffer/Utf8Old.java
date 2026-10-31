package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Utf8Old extends Utf8 {
    private static final ThreadLocal<Utf8Old$Cache> CACHE = new b(new a(0), 0);

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static /* synthetic */ Utf8Old$Cache a() {
        return lambda$static$0();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static /* synthetic */ Utf8Old$Cache lambda$static$0() {
        return new Utf8Old$Cache();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public String decodeUtf8(ByteBuffer byteBuffer, int i9, int i10) {
        CharsetDecoder charsetDecoder = CACHE.get().decoder;
        charsetDecoder.reset();
        ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
        byteBufferDuplicate.position(i9);
        byteBufferDuplicate.limit(i9 + i10);
        try {
            return charsetDecoder.decode(byteBufferDuplicate).toString();
        } catch (CharacterCodingException e) {
            throw new IllegalArgumentException("Bad encoding", e);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer) {
        Utf8Old$Cache utf8Old$Cache = CACHE.get();
        if (utf8Old$Cache.lastInput != charSequence) {
            encodedLength(charSequence);
        }
        byteBuffer.put(utf8Old$Cache.lastOutput);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // androidx.emoji2.text.flatbuffer.Utf8
    public int encodedLength(CharSequence charSequence) {
        Utf8Old$Cache utf8Old$Cache = CACHE.get();
        int iMaxBytesPerChar = (int) (utf8Old$Cache.encoder.maxBytesPerChar() * charSequence.length());
        ByteBuffer byteBuffer = utf8Old$Cache.lastOutput;
        if (byteBuffer == null || byteBuffer.capacity() < iMaxBytesPerChar) {
            utf8Old$Cache.lastOutput = ByteBuffer.allocate(Math.max(128, iMaxBytesPerChar));
        }
        utf8Old$Cache.lastOutput.clear();
        utf8Old$Cache.lastInput = charSequence;
        CoderResult coderResultEncode = utf8Old$Cache.encoder.encode(charSequence instanceof CharBuffer ? (CharBuffer) charSequence : CharBuffer.wrap(charSequence), utf8Old$Cache.lastOutput, true);
        if (coderResultEncode.isError()) {
            try {
                coderResultEncode.throwException();
            } catch (CharacterCodingException e) {
                throw new IllegalArgumentException("bad character encoding", e);
            }
        }
        utf8Old$Cache.lastOutput.flip();
        return utf8Old$Cache.lastOutput.remaining();
    }
}
