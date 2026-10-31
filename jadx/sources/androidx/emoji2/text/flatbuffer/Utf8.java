package androidx.emoji2.text.flatbuffer;

import ai.onnxruntime.AbstractC0074a;
import java.nio.ByteBuffer;
import org.apache.commons.net.bsd.RCommandClient;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class Utf8 {
    private static Utf8 DEFAULT;

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class DecodeUtil {
        public static void handleFourBytes(byte b10, byte b11, byte b12, byte b13, char[] cArr, int i10) {
            if (!isNotTrailingByte(b11)) {
                if ((((b11 + 112) + (b10 << 28)) >> 30) == 0 && !isNotTrailingByte(b12) && !isNotTrailingByte(b13)) {
                    int iTrailingByteValue = ((b10 & 7) << 18) | (trailingByteValue(b11) << 12) | (trailingByteValue(b12) << 6) | trailingByteValue(b13);
                    cArr[i10] = highSurrogate(iTrailingByteValue);
                    cArr[i10 + 1] = lowSurrogate(iTrailingByteValue);
                    return;
                }
            }
            C1929i.m3029k("Invalid UTF-8");
        }

        public static void handleOneByte(byte b10, char[] cArr, int i10) {
            cArr[i10] = (char) b10;
        }

        public static void handleThreeBytes(byte b10, byte b11, byte b12, char[] cArr, int i10) {
            if (isNotTrailingByte(b11) || ((b10 == -32 && b11 < -96) || ((b10 == -19 && b11 >= -96) || isNotTrailingByte(b12)))) {
                C1929i.m3029k("Invalid UTF-8");
            } else {
                cArr[i10] = (char) (((b10 & 15) << 12) | (trailingByteValue(b11) << 6) | trailingByteValue(b12));
            }
        }

        public static void handleTwoBytes(byte b10, byte b11, char[] cArr, int i10) {
            if (b10 < -62) {
                C1929i.m3029k("Invalid UTF-8: Illegal leading byte in 2 bytes utf");
            } else if (isNotTrailingByte(b11)) {
                C1929i.m3029k("Invalid UTF-8: Illegal trailing byte in 2 bytes utf");
            } else {
                cArr[i10] = (char) (((b10 & 31) << 6) | trailingByteValue(b11));
            }
        }

        private static char highSurrogate(int i10) {
            return (char) ((i10 >>> 10) + 55232);
        }

        private static boolean isNotTrailingByte(byte b10) {
            return b10 > -65;
        }

        public static boolean isOneByte(byte b10) {
            return b10 >= 0;
        }

        public static boolean isThreeBytes(byte b10) {
            return b10 < -16;
        }

        public static boolean isTwoBytes(byte b10) {
            return b10 < -32;
        }

        private static char lowSurrogate(int i10) {
            return (char) ((i10 & RCommandClient.MAX_CLIENT_PORT) + 56320);
        }

        private static int trailingByteValue(byte b10) {
            return b10 & 63;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
    public static class UnpairedSurrogateException extends IllegalArgumentException {
        public UnpairedSurrogateException(int i10, int i11) {
            super(AbstractC0074a.m156g(i10, "Unpaired surrogate at index ", " of ", i11));
        }
    }

    public static Utf8 getDefault() {
        if (DEFAULT == null) {
            DEFAULT = new Utf8Safe();
        }
        return DEFAULT;
    }

    public static void setDefault(Utf8 utf8) {
        DEFAULT = utf8;
    }

    public abstract String decodeUtf8(ByteBuffer byteBuffer, int i10, int i11);

    public abstract void encodeUtf8(CharSequence charSequence, ByteBuffer byteBuffer);

    public abstract int encodedLength(CharSequence charSequence);
}
