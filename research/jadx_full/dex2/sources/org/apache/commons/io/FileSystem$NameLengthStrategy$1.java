package org.apache.commons.io;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final enum FileSystem$NameLengthStrategy$1 extends FileSystem$NameLengthStrategy {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileSystem$NameLengthStrategy$1(String str, int i) {
        super(str, i, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.FileSystem$NameLengthStrategy
    public int getLength(CharSequence charSequence, Charset charset) {
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        try {
            return charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).encode(CharBuffer.wrap(charSequence)).remaining();
        } catch (CharacterCodingException unused) {
            return Integer.MAX_VALUE;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.FileSystem$NameLengthStrategy
    public CharSequence truncate(CharSequence charSequence, int i, Charset charset) {
        CharsetEncoder charsetEncoderNewEncoder = charset.newEncoder();
        CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
        CharsetEncoder charsetEncoderOnUnmappableCharacter = charsetEncoderNewEncoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction);
        if (!charsetEncoderOnUnmappableCharacter.canEncode(charSequence)) {
            StringBuilder sb = new StringBuilder("The value ");
            sb.append((Object) charSequence);
            androidx.navigation.b.s(sb, " cannot be encoded using ", charset.name());
            return null;
        }
        if (charSequence.length() > Math.floor(i / charsetEncoderOnUnmappableCharacter.maxBytesPerChar())) {
            CharSequence[] charSequenceArrSplitExtension = FileSystem.splitExtension(charSequence);
            int length = getLength(charSequenceArrSplitExtension[1], charset);
            if (length > 0 && length >= i) {
                throw new IllegalArgumentException("The extension of " + ((Object) charSequence) + " is too long to fit within " + i + " bytes");
            }
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i - length);
            CharBuffer charBufferWrap = CharBuffer.wrap(charSequenceArrSplitExtension[0]);
            if (!charsetEncoderOnUnmappableCharacter.encode(charBufferWrap, byteBufferAllocate, true).isUnderflow()) {
                CharSequence charSequenceAccess$100 = FileSystem.access$100(charSequence, charBufferWrap.position());
                if (length == 0) {
                    return charSequenceAccess$100;
                }
                return charSequenceAccess$100.toString() + ((Object) charSequenceArrSplitExtension[1]);
            }
        }
        return charSequence;
    }
}
