package org.apache.commons.net.util;

import ai.onnxruntime.AbstractC0074a;
import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.util.Objects;
import org.apache.commons.net.SocketClient;
import p099j1.C1929i;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class Base64 {
    static final int CHUNK_SIZE = 76;
    private static final byte PAD = 61;
    private final int lineLength;
    private final byte[] lineSeparator;
    private final boolean urlSafe;
    static final byte[] CHUNK_SEPARATOR = {13, 10};
    private static final byte[] DECODE_TABLE = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51};

    public Base64(int i10, byte[] bArr, boolean z9) {
        if (bArr == null || z9) {
            bArr = NetConstants.EMPTY_BTYE_ARRAY;
            i10 = 0;
        }
        this.lineLength = i10 > 0 ? (i10 / 4) * 4 : 0;
        byte[] bArr2 = new byte[bArr.length];
        this.lineSeparator = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        if (containsBase64Byte(bArr)) {
            C1929i.m3029k(AbstractC0074a.m162m("lineSeperator must not contain base64 characters: [", newStringUtf8(bArr), "]"));
            throw null;
        }
        this.urlSafe = z9;
    }

    private static boolean containsBase64Byte(byte[] bArr) {
        for (byte b10 : bArr) {
            if (isBase64(b10)) {
                return true;
            }
        }
        return false;
    }

    public static byte[] decodeBase64(byte[] bArr) {
        return isEmpty(bArr) ? bArr : getDecoder().decode(bArr);
    }

    public static BigInteger decodeInteger(byte[] bArr) {
        return new BigInteger(1, decodeBase64(bArr));
    }

    private static byte[] encode(byte[] bArr, int i10, byte[] bArr2, boolean z9) {
        if (isEmpty(bArr)) {
            return bArr;
        }
        if (i10 > 0) {
            return encodeBase64Chunked(bArr, i10, bArr2);
        }
        return z9 ? encodeBase64URLSafe(bArr) : encodeBase64(bArr);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z9, boolean z10, int i10) {
        if (isEmpty(bArr)) {
            return bArr;
        }
        long encodeLength = getEncodeLength(bArr, z9 ? CHUNK_SIZE : 0, z9 ? CHUNK_SEPARATOR : NetConstants.EMPTY_BTYE_ARRAY);
        if (encodeLength <= i10) {
            if (z9) {
                return encodeBase64Chunked(bArr);
            }
            return z10 ? encodeBase64URLSafe(bArr) : encodeBase64(bArr);
        }
        throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + encodeLength + ") than the specified maxium size of " + i10);
    }

    private static byte[] encodeBase64Chunked(byte[] bArr, int i10, byte[] bArr2) {
        int intExact = Math.toIntExact(getEncodeLength(bArr, i10, bArr2));
        byte[] bArr3 = new byte[intExact];
        getMimeEncoder(i10, bArr2).encode(bArr, bArr3);
        System.arraycopy(bArr2, 0, bArr3, intExact - bArr2.length, bArr2.length);
        return bArr3;
    }

    public static String encodeBase64String(byte[] bArr) {
        return getMimeEncoder().encodeToString(bArr) + SocketClient.NETASCII_EOL;
    }

    public static String encodeBase64StringUnChunked(byte[] bArr) {
        return getEncoder().encodeToString(bArr);
    }

    public static byte[] encodeBase64URLSafe(byte[] bArr) {
        return getUrlEncoder().withoutPadding().encode(bArr);
    }

    public static String encodeBase64URLSafeString(byte[] bArr) {
        return getUrlEncoder().withoutPadding().encodeToString(bArr);
    }

    public static byte[] encodeInteger(BigInteger bigInteger) {
        return encodeBase64(toIntegerBytes(bigInteger), false);
    }

    private static java.util.Base64.Decoder getDecoder() {
        return java.util.Base64.getDecoder();
    }

    public static long getEncodeLength(byte[] bArr, int i10, byte[] bArr2) {
        int i11 = (i10 / 4) * 4;
        long length = (bArr.length * 4) / 3;
        long j10 = length % 4;
        if (j10 != 0) {
            length += 4 - j10;
        }
        if (i11 <= 0) {
            return length;
        }
        long j11 = i11;
        boolean z9 = length % j11 == 0;
        long length2 = ((length / j11) * ((long) bArr2.length)) + length;
        return !z9 ? length2 + ((long) bArr2.length) : length2;
    }

    private static java.util.Base64.Encoder getEncoder() {
        return java.util.Base64.getEncoder();
    }

    private static java.util.Base64.Encoder getMimeEncoder() {
        return java.util.Base64.getMimeEncoder();
    }

    private static java.util.Base64.Encoder getUrlEncoder() {
        return java.util.Base64.getUrlEncoder();
    }

    public static boolean isArrayByteBase64(byte[] bArr) {
        for (byte b10 : bArr) {
            if (!isBase64(b10) && !isWhiteSpace(b10)) {
                return false;
            }
        }
        return true;
    }

    public static boolean isBase64(byte b10) {
        if (b10 == 61) {
            return true;
        }
        if (b10 < 0) {
            return false;
        }
        byte[] bArr = DECODE_TABLE;
        return b10 < bArr.length && bArr[b10] != -1;
    }

    private static boolean isEmpty(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }

    private static boolean isWhiteSpace(byte b10) {
        return b10 == 9 || b10 == 10 || b10 == 13 || b10 == 32;
    }

    private static String newStringUtf8(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    private static byte[] toIntegerBytes(BigInteger bigInteger) {
        Objects.requireNonNull(bigInteger, "bigInt");
        int iBitLength = ((bigInteger.bitLength() + 7) >> 3) << 3;
        byte[] byteArray = bigInteger.toByteArray();
        int i10 = 1;
        if (bigInteger.bitLength() % 8 != 0 && (bigInteger.bitLength() / 8) + 1 == iBitLength / 8) {
            return byteArray;
        }
        int length = byteArray.length;
        if (bigInteger.bitLength() % 8 == 0) {
            length--;
        } else {
            i10 = 0;
        }
        int i11 = iBitLength / 8;
        int i12 = i11 - length;
        byte[] bArr = new byte[i11];
        System.arraycopy(byteArray, i10, bArr, i12, length);
        return bArr;
    }

    public byte[] decode(byte[] bArr) {
        return isEmpty(bArr) ? bArr : getDecoder().decode(bArr);
    }

    public String encodeToString(byte[] bArr) {
        return newStringUtf8(encode(bArr));
    }

    public final void finalize() throws Throwable {
        super.finalize();
    }

    public int getLineLength() {
        return this.lineLength;
    }

    public byte[] getLineSeparator() {
        return (byte[]) this.lineSeparator.clone();
    }

    public boolean isUrlSafe() {
        return this.urlSafe;
    }

    private static java.util.Base64.Encoder getMimeEncoder(int i10, byte[] bArr) {
        return java.util.Base64.getMimeEncoder(i10, bArr);
    }

    public static byte[] decodeBase64(String str) {
        return getDecoder().decode(str);
    }

    public byte[] decode(String str) {
        return getDecoder().decode(str);
    }

    public static byte[] encodeBase64Chunked(byte[] bArr) {
        return encodeBase64Chunked(bArr, CHUNK_SIZE, CHUNK_SEPARATOR);
    }

    public static String encodeBase64String(byte[] bArr, boolean z9) {
        return newStringUtf8(encodeBase64(bArr, z9));
    }

    public byte[] encode(byte[] bArr) {
        return encode(bArr, this.lineLength, this.lineSeparator, isUrlSafe());
    }

    public Base64(boolean z9) {
        this(CHUNK_SIZE, CHUNK_SEPARATOR, z9);
    }

    public Base64(int i10) {
        this(i10, CHUNK_SEPARATOR);
    }

    public Base64(int i10, byte[] bArr) {
        this(i10, bArr, false);
    }

    public Base64() {
        this(false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z9) {
        return z9 ? encodeBase64Chunked(bArr) : encodeBase64(bArr, false, false);
    }

    public static byte[] encodeBase64(byte[] bArr, boolean z9, boolean z10) {
        return encodeBase64(bArr, z9, z10, Integer.MAX_VALUE);
    }

    public static byte[] encodeBase64(byte[] bArr) {
        return isEmpty(bArr) ? bArr : getEncoder().encode(bArr);
    }
}
