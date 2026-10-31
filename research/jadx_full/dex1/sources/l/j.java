package l;

import c0.l;
import c0.p;
import kotlin.UByte;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l f3253a = new l(1000);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d0.d f3254b = d0.g.a(10, new z3.f(13));

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String a(h.e eVar) {
        String str;
        synchronized (this.f3253a) {
            str = (String) this.f3253a.a(eVar);
        }
        if (str == null) {
            i iVar = (i) this.f3254b.acquire();
            try {
                eVar.b(iVar.f3252b);
                byte[] bArrDigest = iVar.f3252b.digest();
                char[] cArr = p.f412b;
                synchronized (cArr) {
                    for (int i9 = 0; i9 < bArrDigest.length; i9++) {
                        byte b9 = bArrDigest[i9];
                        int i10 = b9 & UByte.MAX_VALUE;
                        int i11 = i9 * 2;
                        char[] cArr2 = p.f411a;
                        cArr[i11] = cArr2[i10 >>> 4];
                        cArr[i11 + 1] = cArr2[b9 & 15];
                    }
                    str = new String(cArr);
                }
                this.f3254b.release(iVar);
            } catch (Throwable th) {
                this.f3254b.release(iVar);
                throw th;
            }
        }
        synchronized (this.f3253a) {
            this.f3253a.d(eVar, str);
        }
        return str;
    }
}
