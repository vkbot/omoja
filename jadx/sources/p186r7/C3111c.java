package p186r7;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import p130l9.C2222a0;
import p130l9.C2245o;
import p142n0.C2467b;
import p164p0.C2950c;

/* JADX INFO: renamed from: r7.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3111c {

    /* JADX INFO: renamed from: b */
    public final C2222a0 f8896b;

    /* JADX INFO: renamed from: a */
    public final ArrayList f8895a = new ArrayList();

    /* JADX INFO: renamed from: e */
    public C3110b[] f8899e = new C3110b[8];

    /* JADX INFO: renamed from: f */
    public int f8900f = 7;

    /* JADX INFO: renamed from: g */
    public int f8901g = 0;

    /* JADX INFO: renamed from: h */
    public int f8902h = 0;

    /* JADX INFO: renamed from: c */
    public int f8897c = 4096;

    /* JADX INFO: renamed from: d */
    public int f8898d = 4096;

    public C3111c(C3114f c3114f) {
        this.f8896b = new C2222a0(c3114f);
    }

    /* JADX INFO: renamed from: a */
    public final int m4948a(int i10) {
        int i11;
        int i12 = 0;
        if (i10 > 0) {
            int length = this.f8899e.length;
            while (true) {
                length--;
                i11 = this.f8900f;
                if (length < i11 || i10 <= 0) {
                    break;
                }
                int i13 = this.f8899e[length].f8894c;
                i10 -= i13;
                this.f8902h -= i13;
                this.f8901g--;
                i12++;
            }
            C3110b[] c3110bArr = this.f8899e;
            System.arraycopy(c3110bArr, i11 + 1, c3110bArr, i11 + 1 + i12, this.f8901g);
            this.f8900f += i12;
        }
        return i12;
    }

    /* JADX INFO: renamed from: b */
    public final C2245o m4949b(int i10) throws IOException {
        if (i10 >= 0) {
            C3110b[] c3110bArr = AbstractC3113e.f8909b;
            if (i10 <= c3110bArr.length - 1) {
                return c3110bArr[i10].f8892a;
            }
        }
        int length = this.f8900f + 1 + (i10 - AbstractC3113e.f8909b.length);
        if (length >= 0) {
            C3110b[] c3110bArr2 = this.f8899e;
            if (length < c3110bArr2.length) {
                return c3110bArr2[length].f8892a;
            }
        }
        C2467b.m3835y(i10 + 1, "Header index too large ");
        return null;
    }

    /* JADX INFO: renamed from: c */
    public final void m4950c(C3110b c3110b) {
        this.f8895a.add(c3110b);
        int i10 = c3110b.f8894c;
        int i11 = this.f8898d;
        if (i10 > i11) {
            Arrays.fill(this.f8899e, (Object) null);
            this.f8900f = this.f8899e.length - 1;
            this.f8901g = 0;
            this.f8902h = 0;
            return;
        }
        m4948a((this.f8902h + i10) - i11);
        int i12 = this.f8901g + 1;
        C3110b[] c3110bArr = this.f8899e;
        if (i12 > c3110bArr.length) {
            C3110b[] c3110bArr2 = new C3110b[c3110bArr.length * 2];
            System.arraycopy(c3110bArr, 0, c3110bArr2, c3110bArr.length, c3110bArr.length);
            this.f8900f = this.f8899e.length - 1;
            this.f8899e = c3110bArr2;
        }
        int i13 = this.f8900f;
        this.f8900f = i13 - 1;
        this.f8899e[i13] = c3110b;
        this.f8901g++;
        this.f8902h += i10;
    }

    /* JADX INFO: renamed from: d */
    public final C2245o m4951d() {
        C2222a0 c2222a0 = this.f8896b;
        byte b10 = c2222a0.readByte();
        int i10 = b10 & UByte.MAX_VALUE;
        boolean z9 = (b10 & ByteCompanionObject.MIN_VALUE) == 128;
        int iM4952e = m4952e(i10, 127);
        if (!z9) {
            return c2222a0.mo3562f(iM4952e);
        }
        C3119k c3119k = C3119k.f8932d;
        long j10 = iM4952e;
        c2222a0.mo3555Y(j10);
        byte[] bArrM3613f0 = c2222a0.f5846c.m3613f0(j10);
        c3119k.getClass();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        C2950c c2950c = c3119k.f8933a;
        C2950c c2950c2 = c2950c;
        int i11 = 0;
        int i12 = 0;
        for (byte b11 : bArrM3613f0) {
            i11 = (i11 << 8) | (b11 & UByte.MAX_VALUE);
            i12 += 8;
            while (i12 >= 8) {
                c2950c2 = ((C2950c[]) c2950c2.f8201d)[(i11 >>> (i12 - 8)) & 255];
                if (((C2950c[]) c2950c2.f8201d) == null) {
                    byteArrayOutputStream.write(c2950c2.f8199b);
                    i12 -= c2950c2.f8200c;
                    c2950c2 = c2950c;
                } else {
                    i12 -= 8;
                }
            }
        }
        while (i12 > 0) {
            C2950c c2950c3 = ((C2950c[]) c2950c2.f8201d)[(i11 << (8 - i12)) & 255];
            C2950c[] c2950cArr = (C2950c[]) c2950c3.f8201d;
            int i13 = c2950c3.f8200c;
            if (c2950cArr != null || i13 > i12) {
                break;
            }
            byteArrayOutputStream.write(c2950c3.f8199b);
            i12 -= i13;
            c2950c2 = c2950c;
        }
        return C2245o.m3635g(byteArrayOutputStream.toByteArray());
    }

    /* JADX INFO: renamed from: e */
    public final int m4952e(int i10, int i11) {
        int i12 = i10 & i11;
        if (i12 < i11) {
            return i12;
        }
        int i13 = 0;
        while (true) {
            byte b10 = this.f8896b.readByte();
            int i14 = b10 & UByte.MAX_VALUE;
            if ((b10 & ByteCompanionObject.MIN_VALUE) == 0) {
                return i11 + (i14 << i13);
            }
            i11 += (b10 & ByteCompanionObject.MAX_VALUE) << i13;
            i13 += 7;
        }
    }
}
