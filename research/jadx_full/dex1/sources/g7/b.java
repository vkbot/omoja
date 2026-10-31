package g7;

import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f2402a;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public b(byte[] bArr) {
        this.f2402a = Arrays.copyOf(bArr, bArr.length);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static int a(char[] cArr, int i9) {
        int i10 = 0;
        for (int i11 = 0; i11 < 4; i11++) {
            char c = cArr[i11 + i9];
            i10 |= ((((((((('@' - c) & (c - '[')) >>> 8) & (c - '@')) - 1) + (((('`' - c) & (c - '{')) >>> 8) & (c - 'F'))) + (((('/' - c) & (c - ':')) >>> 8) & (c + 5))) + (((('*' - c) & (c - ',')) >>> 8) & 63)) + ((((c - '0') & ('.' - c)) >>> 8) & 64)) << (18 - (i11 * 6));
        }
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void b(byte[] bArr, int i9, char[] cArr, int i10) {
        byte b9 = bArr[i9];
        byte b10 = (byte) ((b9 >>> 2) & 63);
        byte b11 = bArr[i9 + 1];
        byte b12 = (byte) (((b9 << 4) | ((b11 & UByte.MAX_VALUE) >>> 4)) & 63);
        byte b13 = bArr[i9 + 2];
        byte[] bArr2 = {b10, b12, (byte) ((((b13 & UByte.MAX_VALUE) >>> 6) | (b11 << 2)) & 63), (byte) (b13 & 63)};
        for (int i11 = 0; i11 < 4; i11++) {
            byte b14 = bArr2[i11];
            cArr[i11 + i10] = (char) (((((b14 + 65) + (((25 - b14) >>> 8) & 6)) - (((51 - b14) >>> 8) & 75)) - (((61 - b14) >>> 8) & 15)) + (((62 - b14) >>> 8) & 3));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static b c(String str) throws c {
        char[] charArray = str.toCharArray();
        if (charArray.length != 44 || charArray[43] != '=') {
            throw new c();
        }
        byte[] bArr = new byte[32];
        int i9 = 0;
        int i10 = 0;
        while (i9 < 10) {
            int iA = a(charArray, i9 * 4);
            i10 |= iA >>> 31;
            int i11 = i9 * 3;
            bArr[i11] = (byte) ((iA >>> 16) & 255);
            bArr[i11 + 1] = (byte) ((iA >>> 8) & 255);
            bArr[i11 + 2] = (byte) (iA & 255);
            i9++;
        }
        int i12 = i9 * 4;
        int iA2 = a(new char[]{charArray[i12], charArray[i12 + 1], charArray[i12 + 2], 'A'}, 0);
        int i13 = (iA2 >>> 31) | (iA2 & 255) | i10;
        int i14 = i9 * 3;
        bArr[i14] = (byte) ((iA2 >>> 16) & 255);
        bArr[i14 + 1] = (byte) ((iA2 >>> 8) & 255);
        if (i13 == 0) {
            return new b(bArr);
        }
        throw new c();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String d() {
        char[] cArr = new char[44];
        int i9 = 0;
        while (true) {
            byte[] bArr = this.f2402a;
            if (i9 >= bArr.length / 3) {
                int i10 = i9 * 3;
                b(new byte[]{bArr[i10], bArr[i10 + 1], 0}, 0, cArr, i9 * 4);
                cArr[43] = '=';
                return new String(cArr);
            }
            b(bArr, i9 * 3, cArr, i9 * 4);
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String e() {
        char[] cArr = new char[64];
        int i9 = 0;
        while (true) {
            byte[] bArr = this.f2402a;
            if (i9 >= bArr.length) {
                return new String(cArr);
            }
            int i10 = i9 * 2;
            byte b9 = bArr[i9];
            cArr[i10] = (char) (((b9 >> 4) & 15) + 87 + (((((b9 >> 4) & 15) - 10) >> 8) & (-39)));
            cArr[i10 + 1] = (char) ((b9 & 15) + 87 + ((((b9 & 15) - 10) >> 8) & (-39)));
            i9++;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != b.class) {
            return false;
        }
        return MessageDigest.isEqual(this.f2402a, ((b) obj).f2402a);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final int hashCode() {
        int i9 = 0;
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f2402a;
            if (i9 >= bArr.length / 4) {
                return i10;
            }
            int i11 = i9 * 4;
            i10 ^= ((bArr[i11] + (bArr[i11 + 1] >> 8)) + (bArr[i11 + 2] >> 16)) + (bArr[i11 + 3] >> 24);
            i9++;
        }
    }
}
