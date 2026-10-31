package p074g7;

import java.security.MessageDigest;
import java.util.Arrays;
import kotlin.UByte;

/* JADX INFO: renamed from: g7.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1623b {

    /* JADX INFO: renamed from: a */
    public final byte[] f4118a;

    public C1623b(byte[] bArr) {
        this.f4118a = Arrays.copyOf(bArr, bArr.length);
    }

    /* JADX INFO: renamed from: a */
    public static int m2710a(char[] cArr, int i10) {
        int i11 = 0;
        for (int i12 = 0; i12 < 4; i12++) {
            char c = cArr[i12 + i10];
            i11 |= ((((((((('@' - c) & (c - '[')) >>> 8) & (c - '@')) - 1) + (((('`' - c) & (c - '{')) >>> 8) & (c - 'F'))) + (((('/' - c) & (c - ':')) >>> 8) & (c + 5))) + (((('*' - c) & (c - ',')) >>> 8) & 63)) + ((((c - '0') & ('.' - c)) >>> 8) & 64)) << (18 - (i12 * 6));
        }
        return i11;
    }

    /* JADX INFO: renamed from: b */
    public static void m2711b(byte[] bArr, int i10, char[] cArr, int i11) {
        byte b10 = bArr[i10];
        byte b11 = (byte) ((b10 >>> 2) & 63);
        byte b12 = bArr[i10 + 1];
        byte b13 = (byte) (((b10 << 4) | ((b12 & UByte.MAX_VALUE) >>> 4)) & 63);
        byte b14 = bArr[i10 + 2];
        byte[] bArr2 = {b11, b13, (byte) ((((b14 & UByte.MAX_VALUE) >>> 6) | (b12 << 2)) & 63), (byte) (b14 & 63)};
        for (int i12 = 0; i12 < 4; i12++) {
            byte b15 = bArr2[i12];
            cArr[i12 + i11] = (char) (((((b15 + 65) + (((25 - b15) >>> 8) & 6)) - (((51 - b15) >>> 8) & 75)) - (((61 - b15) >>> 8) & 15)) + (((62 - b15) >>> 8) & 3));
        }
    }

    /* JADX INFO: renamed from: c */
    public static C1623b m2712c(String str) throws C1624c {
        char[] charArray = str.toCharArray();
        if (charArray.length != 44 || charArray[43] != '=') {
            throw new C1624c();
        }
        byte[] bArr = new byte[32];
        int i10 = 0;
        int i11 = 0;
        while (i10 < 10) {
            int iM2710a = m2710a(charArray, i10 * 4);
            i11 |= iM2710a >>> 31;
            int i12 = i10 * 3;
            bArr[i12] = (byte) ((iM2710a >>> 16) & 255);
            bArr[i12 + 1] = (byte) ((iM2710a >>> 8) & 255);
            bArr[i12 + 2] = (byte) (iM2710a & 255);
            i10++;
        }
        int i13 = i10 * 4;
        int iM2710a2 = m2710a(new char[]{charArray[i13], charArray[i13 + 1], charArray[i13 + 2], 'A'}, 0);
        int i14 = (iM2710a2 >>> 31) | (iM2710a2 & 255) | i11;
        int i15 = i10 * 3;
        bArr[i15] = (byte) ((iM2710a2 >>> 16) & 255);
        bArr[i15 + 1] = (byte) ((iM2710a2 >>> 8) & 255);
        if (i14 == 0) {
            return new C1623b(bArr);
        }
        throw new C1624c();
    }

    /* JADX INFO: renamed from: d */
    public final String m2713d() {
        char[] cArr = new char[44];
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f4118a;
            if (i10 >= bArr.length / 3) {
                int i11 = i10 * 3;
                m2711b(new byte[]{bArr[i11], bArr[i11 + 1], 0}, 0, cArr, i10 * 4);
                cArr[43] = '=';
                return new String(cArr);
            }
            m2711b(bArr, i10 * 3, cArr, i10 * 4);
            i10++;
        }
    }

    /* JADX INFO: renamed from: e */
    public final String m2714e() {
        char[] cArr = new char[64];
        int i10 = 0;
        while (true) {
            byte[] bArr = this.f4118a;
            if (i10 >= bArr.length) {
                return new String(cArr);
            }
            int i11 = i10 * 2;
            byte b10 = bArr[i10];
            cArr[i11] = (char) (((b10 >> 4) & 15) + 87 + (((((b10 >> 4) & 15) - 10) >> 8) & (-39)));
            cArr[i11 + 1] = (char) ((b10 & 15) + 87 + ((((b10 & 15) - 10) >> 8) & (-39)));
            i10++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != C1623b.class) {
            return false;
        }
        return MessageDigest.isEqual(this.f4118a, ((C1623b) obj).f4118a);
    }

    public final int hashCode() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = this.f4118a;
            if (i10 >= bArr.length / 4) {
                return i11;
            }
            int i12 = i10 * 4;
            i11 ^= ((bArr[i12] + (bArr[i12 + 1] >> 8)) + (bArr[i12 + 2] >> 16)) + (bArr[i12 + 3] >> 24);
            i10++;
        }
    }
}
