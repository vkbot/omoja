package p120l;

import kotlin.UByte;
import p025c0.AbstractC0947p;
import p025c0.C0943l;
import p037d0.AbstractC1239g;
import p037d0.C1236d;
import p077h.InterfaceC1643e;
import p258z3.C3720f;

/* JADX INFO: renamed from: l.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2193j {

    /* JADX INFO: renamed from: a */
    public final C0943l f5723a = new C0943l(1000);

    /* JADX INFO: renamed from: b */
    public final C1236d f5724b = AbstractC1239g.m2223a(10, new C3720f(13));

    /* JADX INFO: renamed from: a */
    public final String m3499a(InterfaceC1643e interfaceC1643e) {
        String str;
        synchronized (this.f5723a) {
            str = (String) this.f5723a.m1077a(interfaceC1643e);
        }
        if (str == null) {
            C2192i c2192i = (C2192i) this.f5724b.acquire();
            try {
                interfaceC1643e.mo917b(c2192i.f5721b);
                byte[] bArrDigest = c2192i.f5721b.digest();
                char[] cArr = AbstractC0947p.f811b;
                synchronized (cArr) {
                    for (int i10 = 0; i10 < bArrDigest.length; i10++) {
                        byte b10 = bArrDigest[i10];
                        int i11 = b10 & UByte.MAX_VALUE;
                        int i12 = i10 * 2;
                        char[] cArr2 = AbstractC0947p.f810a;
                        cArr[i12] = cArr2[i11 >>> 4];
                        cArr[i12 + 1] = cArr2[b10 & 15];
                    }
                    str = new String(cArr);
                }
                this.f5724b.release(c2192i);
            } catch (Throwable th) {
                this.f5724b.release(c2192i);
                throw th;
            }
        }
        synchronized (this.f5723a) {
            this.f5723a.m1080d(interfaceC1643e, str);
        }
        return str;
    }
}
