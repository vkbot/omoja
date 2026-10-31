package com.bumptech.glide.manager;

import java.io.File;
import java.util.Arrays;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f612a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f613b;
    public final Object c;
    public Object d;
    public Object e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public s(f6.b bVar) throws z5.e {
        this.f612a = 3;
        int i9 = bVar.c;
        if (i9 < 21 || (i9 & 3) != 1) {
            throw z5.e.a();
        }
        this.c = bVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a() {
        f.c.b((f.c) this.e, this, false);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void b(long j9, String str) {
        e(str, String.valueOf(j9));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void c(Object obj, String str) {
        a5.h hVar = new a5.h(10);
        ((a5.h) this.e).e = hVar;
        this.e = hVar;
        hVar.d = obj;
        hVar.c = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void d(String str, boolean z8) {
        e(str, String.valueOf(z8));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void e(String str, String str2) {
        i4.c cVar = new i4.c(10);
        ((a5.h) this.e).e = cVar;
        this.e = cVar;
        cVar.d = str2;
        cVar.c = str;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public int f(int i9, int i10, int i11) {
        boolean z8 = this.f613b;
        f6.b bVar = (f6.b) this.c;
        return z8 ? bVar.b(i10, i9) : bVar.b(i9, i10) ? (i11 << 1) | 1 : i11 << 1;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public File g() {
        File file;
        synchronized (((f.c) this.e)) {
            try {
                f.b bVar = (f.b) this.c;
                if (bVar.f2136f != this) {
                    throw new IllegalStateException();
                }
                if (!bVar.e) {
                    ((boolean[]) this.d)[0] = true;
                }
                file = bVar.d[0];
                ((f.c) this.e).f2138b.mkdirs();
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w6.c h() throws z5.e {
        w6.c cVar = (w6.c) this.e;
        if (cVar != null) {
            return cVar;
        }
        int iF = 0;
        int iF2 = 0;
        for (int i9 = 0; i9 < 6; i9++) {
            iF2 = f(i9, 8, iF2);
        }
        int iF3 = f(8, 7, f(8, 8, f(7, 8, iF2)));
        for (int i10 = 5; i10 >= 0; i10--) {
            iF3 = f(8, i10, iF3);
        }
        int i11 = ((f6.b) this.c).c;
        int i12 = i11 - 7;
        for (int i13 = i11 - 1; i13 >= i12; i13--) {
            iF = f(8, i13, iF);
        }
        for (int i14 = i11 - 8; i14 < i11; i14++) {
            iF = f(i14, 8, iF);
        }
        w6.c cVarA = w6.c.a(iF3, iF);
        if (cVarA == null) {
            cVarA = w6.c.a(iF3 ^ 21522, iF ^ 21522);
        }
        this.e = cVarA;
        if (cVarA != null) {
            return cVarA;
        }
        throw z5.e.a();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public w6.f i() throws z5.e {
        w6.f fVar = (w6.f) this.d;
        if (fVar != null) {
            return fVar;
        }
        int i9 = ((f6.b) this.c).c;
        int i10 = (i9 - 17) / 4;
        if (i10 <= 6) {
            return w6.f.c(i10);
        }
        int i11 = i9 - 11;
        int iF = 0;
        int iF2 = 0;
        for (int i12 = 5; i12 >= 0; i12--) {
            for (int i13 = i9 - 9; i13 >= i11; i13--) {
                iF2 = f(i13, i12, iF2);
            }
        }
        w6.f fVarB = w6.f.b(iF2);
        if (fVarB != null && (fVarB.f5943a * 4) + 17 == i9) {
            this.d = fVarB;
            return fVarB;
        }
        for (int i14 = 5; i14 >= 0; i14--) {
            for (int i15 = i9 - 9; i15 >= i11; i15--) {
                iF = f(i14, i15, iF);
            }
        }
        w6.f fVarB2 = w6.f.b(iF);
        if (fVarB2 == null || (fVarB2.f5943a * 4) + 17 != i9) {
            throw z5.e.a();
        }
        this.d = fVarB2;
        return fVarB2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void j() {
        if (((w6.c) this.e) == null) {
            return;
        }
        int i9 = com.bumptech.glide.g.d(8)[((w6.c) this.e).f5931b];
        f6.b bVar = (f6.b) this.c;
        int i10 = bVar.c;
        for (int i11 = 0; i11 < i10; i11++) {
            for (int i12 = 0; i12 < i10; i12++) {
                if (w6.b.a(i9, i11, i12)) {
                    bVar.a(i12, i11);
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String toString() {
        switch (this.f612a) {
            case 2:
                boolean z8 = this.f613b;
                StringBuilder sb = new StringBuilder(32);
                sb.append((String) this.c);
                sb.append('{');
                String str = "";
                for (a5.h hVar = (a5.h) ((a5.h) this.d).e; hVar != null; hVar = (a5.h) hVar.e) {
                    Object obj = hVar.d;
                    if ((hVar instanceof i4.c) || obj != null || !z8) {
                        sb.append(str);
                        String str2 = (String) hVar.c;
                        if (str2 != null) {
                            sb.append(str2);
                            sb.append('=');
                        }
                        if (obj == null || !obj.getClass().isArray()) {
                            sb.append(obj);
                        } else {
                            String strDeepToString = Arrays.deepToString(new Object[]{obj});
                            sb.append((CharSequence) strDeepToString, 1, strDeepToString.length() - 1);
                        }
                        str = ", ";
                    }
                }
                sb.append('}');
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public s(String str) {
        this.f612a = 2;
        a5.h hVar = new a5.h(10);
        this.d = hVar;
        this.e = hVar;
        this.f613b = false;
        this.c = str;
    }

    public s(c0.h hVar, p pVar) {
        this.f612a = 0;
        this.e = new r(0, this);
        this.d = hVar;
        this.c = pVar;
    }

    public s(f.c cVar, f.b bVar) {
        this.f612a = 1;
        this.e = cVar;
        this.c = bVar;
        this.d = bVar.e ? null : new boolean[cVar.f2141h];
    }
}
