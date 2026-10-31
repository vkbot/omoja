package p104j6;

import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import p047e0.AbstractC1387m;

/* JADX INFO: renamed from: j6.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1992a {

    /* JADX INFO: renamed from: a */
    public final byte[] f5420a;

    /* JADX INFO: renamed from: b */
    public int f5421b;

    public /* synthetic */ C1992a(int i10, byte[] bArr) {
        this.f5421b = i10;
        this.f5420a = bArr;
    }

    /* JADX INFO: renamed from: a */
    public static IOException m3074a() {
        return new IOException(AbstractC1387m.m2421h(new byte[]{-68, 123, -64, 119, -53, 64, -105, -27, -107, 58, -36, 99, -53, 70, -107, -30, -124, 124, -116, 124, -63, 65, -119, -31, -106, ByteCompanionObject.MAX_VALUE}, new byte[]{-15, 26, -84, 17, -92, 50, -6, ByteCompanionObject.MIN_VALUE}));
    }

    /* JADX INFO: renamed from: b */
    public byte[] m3075b() {
        long jM3078e = m3078e();
        if (jM3078e < 0 || jM3078e > 2147483647L) {
            throw m3074a();
        }
        int i10 = (int) jM3078e;
        m3079f(i10);
        byte[] bArr = new byte[i10];
        System.arraycopy(this.f5420a, this.f5421b, bArr, 0, i10);
        this.f5421b += i10;
        return bArr;
    }

    /* JADX INFO: renamed from: c */
    public int m3076c() throws IOException {
        m3079f(4);
        int i10 = this.f5421b;
        byte[] bArr = this.f5420a;
        int i11 = ((bArr[i10 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i10] & UByte.MAX_VALUE) | ((bArr[i10 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i10 + 2] & UByte.MAX_VALUE) << 16);
        this.f5421b = i10 + 4;
        return i11;
    }

    /* JADX INFO: renamed from: d */
    public long m3077d() throws IOException {
        m3079f(8);
        long j10 = 0;
        for (int i10 = 0; i10 < 8; i10++) {
            j10 |= ((long) (this.f5420a[this.f5421b + i10] & UByte.MAX_VALUE)) << (i10 * 8);
        }
        this.f5421b += 8;
        return j10;
    }

    /* JADX INFO: renamed from: e */
    public long m3078e() {
        long j10 = 0;
        for (int i10 = 0; i10 < 64; i10 += 7) {
            m3079f(1);
            int i11 = this.f5421b;
            this.f5421b = i11 + 1;
            byte b10 = this.f5420a[i11];
            j10 |= ((long) (b10 & ByteCompanionObject.MAX_VALUE)) << i10;
            if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j10;
            }
        }
        throw m3074a();
    }

    /* JADX INFO: renamed from: f */
    public void m3079f(int i10) throws IOException {
        if (i10 < 0 || this.f5421b > this.f5420a.length - i10) {
            throw m3074a();
        }
    }

    /* JADX INFO: renamed from: g */
    public void m3080g(int i10) {
        if (i10 == 0) {
            m3078e();
            return;
        }
        if (i10 == 1) {
            m3079f(8);
            this.f5421b += 8;
            return;
        }
        if (i10 != 2) {
            if (i10 != 5) {
                throw m3074a();
            }
            m3079f(4);
            this.f5421b += 4;
            return;
        }
        long jM3078e = m3078e();
        if (jM3078e < 0 || jM3078e > 2147483647L) {
            throw m3074a();
        }
        int i11 = (int) jM3078e;
        m3079f(i11);
        this.f5421b += i11;
    }

    public C1992a(byte[] bArr) {
        this.f5420a = bArr;
    }
}
