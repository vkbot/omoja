package org.apache.commons.io;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final enum FileSystem$NameLengthStrategy$2 extends FileSystem$NameLengthStrategy {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public FileSystem$NameLengthStrategy$2(String str, int i) {
        super(str, i, null);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.FileSystem$NameLengthStrategy
    public int getLength(CharSequence charSequence, Charset charset) {
        return charSequence.length();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // org.apache.commons.io.FileSystem$NameLengthStrategy
    public CharSequence truncate(CharSequence charSequence, int i, Charset charset) {
        Charset charset2 = StandardCharsets.UTF_16;
        if (!charset2.newEncoder().canEncode(charSequence)) {
            StringBuilder sb = new StringBuilder("The value ");
            sb.append((Object) charSequence);
            androidx.navigation.b.s(sb, " can not be encoded using ", charset2.name());
            return null;
        }
        if (charSequence.length() <= i) {
            return charSequence;
        }
        CharSequence[] charSequenceArrSplitExtension = FileSystem.splitExtension(charSequence);
        int length = charSequenceArrSplitExtension[1].length();
        if (length > 0 && length >= i) {
            throw new IllegalArgumentException("The extension of " + ((Object) charSequence) + " is too long to fit within " + i + " characters");
        }
        CharSequence charSequenceAccess$100 = FileSystem.access$100(charSequence, i - length);
        if (length == 0) {
            return charSequenceAccess$100;
        }
        return charSequenceAccess$100.toString() + ((Object) charSequenceArrSplitExtension[1]);
    }
}
