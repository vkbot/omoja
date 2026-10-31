package androidx.emoji2.text.flatbuffer;

import j1.i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public class Utf8$DecodeUtil {
    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void handleFourBytes(byte b9, byte b10, byte b11, byte b12, char[] cArr, int i9) {
        if (!isNotTrailingByte(b10)) {
            if ((((b10 + 112) + (b9 << 28)) >> 30) == 0 && !isNotTrailingByte(b11) && !isNotTrailingByte(b12)) {
                int iTrailingByteValue = ((b9 & 7) << 18) | (trailingByteValue(b10) << 12) | (trailingByteValue(b11) << 6) | trailingByteValue(b12);
                cArr[i9] = highSurrogate(iTrailingByteValue);
                cArr[i9 + 1] = lowSurrogate(iTrailingByteValue);
                return;
            }
        }
        i.k("Invalid UTF-8");
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void handleOneByte(byte b9, char[] cArr, int i9) {
        cArr[i9] = (char) b9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void handleThreeBytes(byte b9, byte b10, byte b11, char[] cArr, int i9) {
        if (isNotTrailingByte(b10) || ((b9 == -32 && b10 < -96) || ((b9 == -19 && b10 >= -96) || isNotTrailingByte(b11)))) {
            i.k("Invalid UTF-8");
        } else {
            cArr[i9] = (char) (((b9 & 15) << 12) | (trailingByteValue(b10) << 6) | trailingByteValue(b11));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void handleTwoBytes(byte b9, byte b10, char[] cArr, int i9) {
        if (b9 < -62) {
            i.k("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
        } else if (isNotTrailingByte(b10)) {
            i.k("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
        } else {
            cArr[i9] = (char) (((b9 & 31) << 6) | trailingByteValue(b10));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static char highSurrogate(int i9) {
        return (char) ((i9 >>> 10) + 55232);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isNotTrailingByte(byte b9) {
        return b9 > -65;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isOneByte(byte b9) {
        return b9 >= 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isThreeBytes(byte b9) {
        return b9 < -16;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isTwoBytes(byte b9) {
        return b9 < -32;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static char lowSurrogate(int i9) {
        return (char) ((i9 & 1023) + 56320);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int trailingByteValue(byte b9) {
        return b9 & 63;
    }
}
