package p038d1;

import com.google.protobuf.AbstractC1178q;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.p118io.encoding.Base64;
import p047e0.AbstractC1387m;
import p142n0.C2467b;

/* JADX INFO: renamed from: d1.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1243c {

    /* JADX INFO: renamed from: e */
    public static final int f2920e = m2231a(AbstractC1387m.m2421h(new byte[]{110, 83, 25, 24}, new byte[]{47, 6, 77, 80, -104, 72, -67, -65}));

    /* JADX INFO: renamed from: f */
    public static final int f2921f = m2231a(AbstractC1387m.m2421h(new byte[]{-98, 37, -42, -50}, new byte[]{-35, 105, -123, -117, 57, -7, 70, -107}));

    /* JADX INFO: renamed from: g */
    public static final int f2922g = m2231a(AbstractC1387m.m2421h(new byte[]{-50, 42, 81, 6}, new byte[]{-115, 100, 9, 72, 92, -59, -120, -109}));

    /* JADX INFO: renamed from: h */
    public static final int f2923h = m2231a(AbstractC1387m.m2421h(new byte[]{-36, -4, 83, 53}, new byte[]{-109, -73, 18, 108, -104, -38, 44, -8}));

    /* JADX INFO: renamed from: i */
    public static final int f2924i = m2231a(AbstractC1387m.m2421h(new byte[]{18, 0, -108, 35}, new byte[]{93, 80, -47, 109, -112, 70, 35, -61}));

    /* JADX INFO: renamed from: j */
    public static final int f2925j = m2231a(AbstractC1387m.m2421h(new byte[]{32, 44, -81, 113}, new byte[]{119, 126, -5, 52, 69, 59, 101, 23}));

    /* JADX INFO: renamed from: a */
    public final int f2926a;

    /* JADX INFO: renamed from: b */
    public final int f2927b;

    /* JADX INFO: renamed from: c */
    public final int f2928c;

    /* JADX INFO: renamed from: d */
    public final byte[] f2929d;

    public C1243c(int i10, int i11, int i12, byte[] bArr) {
        this.f2926a = i10;
        this.f2927b = i11;
        this.f2928c = i12;
        this.f2929d = bArr;
    }

    /* JADX INFO: renamed from: a */
    public static int m2231a(String str) {
        return ((str.charAt(3) & 255) << 24) | (str.charAt(0) & 255) | ((str.charAt(1) & 255) << 8) | ((str.charAt(2) & 255) << 16);
    }

    /* JADX INFO: renamed from: b */
    public static C1243c m2232b(InputStream inputStream) throws IOException {
        ByteBuffer byteBufferOrder = ByteBuffer.wrap(m2233c(inputStream, 24)).order(ByteOrder.LITTLE_ENDIAN);
        int i10 = byteBufferOrder.getInt();
        int i11 = byteBufferOrder.getInt();
        int i12 = byteBufferOrder.getInt();
        int i13 = byteBufferOrder.getInt();
        int i14 = byteBufferOrder.getInt();
        int i15 = byteBufferOrder.getInt();
        if (i13 < 0 || i13 > 16777216) {
            C2467b.m3820A(AbstractC1178q.m2076j(new byte[]{-90, -37, -29, -89, Base64.padSymbol, -25, -24, 91, -89, -58, -30, -110, Base64.padSymbol, -24, -24, 95, -89, -60, -29, -81, 60, -42, -24, 92, 86, -105, -77, -62, 93, -115, -113, 53, -54, -106, -122, -61, 109, 125, 121, -95, 52, 107, -29, -83, Base64.padSymbol, -19, -24, 95, -90, -13, -30, -112, Base64.padSymbol, -19, 2, -59}, new byte[]{118, 70, 51, 18, -19, 93, 56, -27}, new StringBuilder(), i13));
            return null;
        }
        if (i15 != (~i10)) {
            C2467b.m3820A(AbstractC1387m.m2421h(new byte[]{89, -51, 31, 43, 103, 9, 38, -37, 88, -48, 30, 30, 103, 6, 38, -33, 88, -46, 31, 35, 102, 56, 38, -36, -87, 17, -117, -36, -102, 99, 73, -75, 57, ByteCompanionObject.MIN_VALUE, 117, 78, 2, 98, 116}, new byte[]{-119, 80, -49, -98, -73, -77, -10, 101}));
            return null;
        }
        byte[] bArrM2233c = m2233c(inputStream, i13);
        int i16 = 0;
        for (byte b10 : bArrM2233c) {
            i16 += b10 & UByte.MAX_VALUE;
        }
        if (i16 == i14) {
            return new C1243c(i10, i11, i12, bArrM2233c);
        }
        C2467b.m3820A(AbstractC1387m.m2421h(new byte[]{88, 5, 72, -99, 43, 16, 91, -58, 88, 33, 73, -91, -37, 120, 49, -89, 54, 75, 36, -60, 121, 121, 11, -89, 54, 75, 34, -60, 119, 120, 54, -89, 54, 75, 32, 53, 42, 41, 90, -12, 88, 39, 73, -87, 42, 35, -85, 54, -52, -39, -76, -59, 68, 120, 59, -89, 50, 75, 44, -60, 121, 120, 59}, new byte[]{-120, -101, -103, 21, -5, -88, -117, 119}));
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static byte[] m2233c(InputStream inputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        int i11 = 0;
        while (i11 < i10) {
            int i12 = inputStream.read(bArr, i11, i10 - i11);
            if (i12 < 0) {
                throw new EOFException(AbstractC1387m.m2421h(new byte[]{-81, 30, 72, 21, -64, 23, -62, -63, 62, -17, -38, -116, -63, 46, -62, -62, 62, -17, -38, -123, -63, 46, -62, -54, -50, -118, -67, -24, -95, 70, -88, -82, 110, -117, -127, -23, -109, 70, -84}, new byte[]{-18, 90, 10, 56, 17, -106, 18, ByteCompanionObject.MAX_VALUE}));
            }
            i11 += i12;
        }
        return bArr;
    }

    /* JADX INFO: renamed from: d */
    public static void m2234d(OutputStream outputStream, int i10, int i11, int i12, byte[] bArr) throws IOException {
        if (bArr == null) {
            bArr = new byte[0];
        }
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(24).order(ByteOrder.LITTLE_ENDIAN);
        byteBufferOrder.putInt(i10);
        byteBufferOrder.putInt(i11);
        byteBufferOrder.putInt(i12);
        byteBufferOrder.putInt(bArr.length);
        int i13 = 0;
        for (byte b10 : bArr) {
            i13 += b10 & UByte.MAX_VALUE;
        }
        byteBufferOrder.putInt(i13);
        byteBufferOrder.putInt(~i10);
        outputStream.write(byteBufferOrder.array());
        outputStream.write(bArr);
        outputStream.flush();
    }
}
