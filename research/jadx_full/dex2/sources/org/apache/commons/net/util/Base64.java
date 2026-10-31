package org.apache.commons.net.util;

import j1.i;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.util.Base64$Decoder;
import java.util.Base64$Encoder;
import java.util.Objects;
import org.apache.commons.io.filefilter.f;
import org.apache.commons.net.SocketClient;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
@Deprecated
public class Base64 {
    static final int CHUNK_SIZE = 76;
    private final int lineLength;
    private final byte[] lineSeparator;
    private final boolean urlSafe;
    static final byte[] CHUNK_SEPARATOR = {13, 10};
    private static final byte PAD = 61;
    private static final byte[] DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, PAD, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public Base64(int i, byte[] bArr, boolean z) {
        if (bArr == null || z) {
            bArr = NetConstants.EMPTY_BTYE_ARRAY;
            i = 0;
        }
        this.lineLength = i > 0 ? (i / 4) * 4 : 0;
        byte[] bArr2 = new byte[bArr.length];
        this.lineSeparator = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        if (containsBase64Byte(bArr)) {
            i.k(ai.onnxruntime.a.m("lineSeperator must not contain base64 characters: [", newStringUtf8(bArr), "]"));
            throw null;
        }
        this.urlSafe = z;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean containsBase64Byte(byte[] bArr) {
        for (byte b : bArr) {
            if (isBase64(b)) {
                return true;
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] decodeBase64(byte[] bArr) {
        return isEmpty(bArr) ? bArr : f.v(getDecoder(), bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static BigInteger decodeInteger(byte[] bArr) {
        return new BigInteger(1, decodeBase64(bArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static byte[] encode(byte[] bArr, int i, byte[] bArr2, boolean z) {
        if (isEmpty(bArr)) {
            return bArr;
        }
        if (i > 0) {
            return encodeBase64Chunked(bArr, i, bArr2);
        }
        return z ? encodeBase64URLSafe(bArr) : encodeBase64(bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2, int i) {
        if (isEmpty(bArr)) {
            return bArr;
        }
        long encodeLength = getEncodeLength(bArr, z ? CHUNK_SIZE : 0, z ? CHUNK_SEPARATOR : NetConstants.EMPTY_BTYE_ARRAY);
        if (encodeLength <= i) {
            if (z) {
                return encodeBase64Chunked(bArr);
            }
            return z2 ? encodeBase64URLSafe(bArr) : encodeBase64(bArr);
        }
        throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + encodeLength + ") than the specified maxium size of " + i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static byte[] encodeBase64Chunked(byte[] bArr, int i, byte[] bArr2) {
        int intExact = Math.toIntExact(getEncodeLength(bArr, i, bArr2));
        byte[] bArr3 = new byte[intExact];
        f.t(getMimeEncoder(i, bArr2), bArr, bArr3);
        System.arraycopy(bArr2, 0, bArr3, intExact - bArr2.length, bArr2.length);
        return bArr3;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String encodeBase64String(byte[] bArr) {
        return f.d(getMimeEncoder(), bArr) + SocketClient.NETASCII_EOL;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String encodeBase64StringUnChunked(byte[] bArr) {
        return f.d(getEncoder(), bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] encodeBase64URLSafe(byte[] bArr) {
        return f.w(f.r(getUrlEncoder()), bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static String encodeBase64URLSafeString(byte[] bArr) {
        return f.d(f.r(getUrlEncoder()), bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static byte[] encodeInteger(BigInteger bigInteger) {
        return encodeBase64(toIntegerBytes(bigInteger), false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Base64$Decoder getDecoder() {
        return f.p();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static long getEncodeLength(byte[] bArr, int i, byte[] bArr2) {
        int i2 = (i / 4) * 4;
        long length = (bArr.length * 4) / 3;
        long j = length % 4;
        if (j != 0) {
            length += 4 - j;
        }
        if (i2 <= 0) {
            return length;
        }
        long j2 = i2;
        boolean z = length % j2 == 0;
        long length2 = ((length / j2) * ((long) bArr2.length)) + length;
        return !z ? length2 + ((long) bArr2.length) : length2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Base64$Encoder getEncoder() {
        return f.q();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Base64$Encoder getMimeEncoder() {
        return f.A();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static Base64$Encoder getUrlEncoder() {
        return f.y();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isArrayByteBase64(byte[] bArr) {
        for (byte b : bArr) {
            if (!isBase64(b) && !isWhiteSpace(b)) {
                return false;
            }
        }
        return true;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static boolean isBase64(byte b) {
        if (b == 61) {
            return true;
        }
        if (b < 0) {
            return false;
        }
        byte[] bArr = DECODE_TABLE;
        return b < bArr.length && bArr[b] != -1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isEmpty(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isWhiteSpace(byte b) {
        return b == 9 || b == 10 || b == 13 || b == 32;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String newStringUtf8(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static byte[] toIntegerBytes(BigInteger bigInteger) {
        Objects.requireNonNull(bigInteger, "bigInt");
        int iBitLength = ((bigInteger.bitLength() + 7) >> 3) << 3;
        byte[] byteArray = bigInteger.toByteArray();
        int i = 1;
        if (bigInteger.bitLength() % 8 != 0 && (bigInteger.bitLength() / 8) + 1 == iBitLength / 8) {
            return byteArray;
        }
        int length = byteArray.length;
        if (bigInteger.bitLength() % 8 == 0) {
            length--;
        } else {
            i = 0;
        }
        int i2 = iBitLength / 8;
        int i3 = i2 - length;
        byte[] bArr = new byte[i2];
        System.arraycopy(byteArray, i, bArr, i3, length);
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] decode(byte[] bArr) {
        return isEmpty(bArr) ? bArr : f.v(getDecoder(), bArr);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String encodeToString(byte[] bArr) {
        return newStringUtf8(encode(bArr));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void finalize() throws Throwable {
        super.finalize();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int getLineLength() {
        return this.lineLength;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] getLineSeparator() {
        return (byte[]) this.lineSeparator.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public boolean isUrlSafe() {
        return this.urlSafe;
    }

    private static Base64$Encoder getMimeEncoder(int i, byte[] bArr) {
        return a.p(i, bArr);
    }

    public static byte[] decodeBase64(String str) {
        return f.u(getDecoder(), str);
    }

    public byte[] decode(String str) {
        return f.u(getDecoder(), str);
    }

    public static byte[] encodeBase64Chunked(byte[] bArr) {
        return encodeBase64Chunked(bArr, CHUNK_SIZE, CHUNK_SEPARATOR);
    }

    public static String encodeBase64String(byte[] bArr, boolean z) {
        return newStringUtf8(encodeBase64(bArr, z));
    }

    public byte[] encode(byte[] bArr) {
        return encode(bArr, this.lineLength, this.lineSeparator, isUrlSafe());
    }

    public Base64(boolean z) {
        this(CHUNK_SIZE, CHUNK_SEPARATOR, z);
    }

    public Base64(int i) {
        this(i, CHUNK_SEPARATOR);
    }

    public Base64(int i, byte[] bArr) {
        this(i, bArr, false);
    }

    public Base64() {
        this(false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z) {
        return z ? encodeBase64Chunked(bArr) : encodeBase64(bArr, false, false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z, boolean z2) {
        return encodeBase64(bArr, z, z2, Integer.MAX_VALUE);
    }

    public static byte[] encodeBase64(byte[] bArr) {
        return isEmpty(bArr) ? bArr : f.w(getEncoder(), bArr);
    }
}
