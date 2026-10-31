package androidx.emoji2.text.flatbuffer;

import kotlin.UByte;
import kotlin.UShort;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class FlexBuffers$Unsigned {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int byteToUnsignedInt(byte b9) {
        return b9 & UByte.MAX_VALUE;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long intToUnsignedLong(int i9) {
        return ((long) i9) & 4294967295L;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int shortToUnsignedInt(short s5) {
        return s5 & UShort.MAX_VALUE;
    }
}
