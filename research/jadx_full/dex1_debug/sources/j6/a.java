package j6;

import e0.m;
import java.io.IOException;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f3087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f3088b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public /* synthetic */ a(int i9, byte[] bArr) {
        this.f3088b = i9;
        this.f3087a = bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static IOException a() {
        return new IOException(m.h(new byte[]{-68, 123, -64, 119, -53, 64, -105, -27, -107, 58, -36, 99, -53, 70, -107, -30, -124, 124, -116, 124, -63, 65, -119, -31, -106, ByteCompanionObject.MAX_VALUE}, new byte[]{-15, 26, -84, 17, -92, 50, -6, ByteCompanionObject.MIN_VALUE}));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public byte[] b() {
        long jE = e();
        if (jE < 0 || jE > 2147483647L) {
            throw a();
        }
        int i9 = (int) jE;
        f(i9);
        byte[] bArr = new byte[i9];
        System.arraycopy(this.f3087a, this.f3088b, bArr, 0, i9);
        this.f3088b += i9;
        return bArr;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int c() throws IOException {
        f(4);
        int i9 = this.f3088b;
        byte[] bArr = this.f3087a;
        int i10 = ((bArr[i9 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i9] & UByte.MAX_VALUE) | ((bArr[i9 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i9 + 2] & UByte.MAX_VALUE) << 16);
        this.f3088b = i9 + 4;
        return i10;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long d() throws IOException {
        f(8);
        long j9 = 0;
        for (int i9 = 0; i9 < 8; i9++) {
            j9 |= ((long) (this.f3087a[this.f3088b + i9] & UByte.MAX_VALUE)) << (i9 * 8);
        }
        this.f3088b += 8;
        return j9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public long e() {
        long j9 = 0;
        for (int i9 = 0; i9 < 64; i9 += 7) {
            f(1);
            int i10 = this.f3088b;
            this.f3088b = i10 + 1;
            byte b9 = this.f3087a[i10];
            j9 |= ((long) (b9 & ByteCompanionObject.MAX_VALUE)) << i9;
            if ((b9 & ByteCompanionObject.MIN_VALUE) == 0) {
                return j9;
            }
        }
        throw a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void f(int i9) throws IOException {
        if (i9 < 0 || this.f3088b > this.f3087a.length - i9) {
            throw a();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void g(int i9) {
        if (i9 == 0) {
            e();
            return;
        }
        if (i9 == 1) {
            f(8);
            this.f3088b += 8;
            return;
        }
        if (i9 != 2) {
            if (i9 != 5) {
                throw a();
            }
            f(4);
            this.f3088b += 4;
            return;
        }
        long jE = e();
        if (jE < 0 || jE > 2147483647L) {
            throw a();
        }
        int i10 = (int) jE;
        f(i10);
        this.f3088b += i10;
    }

    public a(byte[] bArr) {
        this.f3087a = bArr;
    }
}
