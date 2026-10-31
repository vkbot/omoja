package j;

import android.util.Log;
import androidx.core.util.Pools$Pool;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class f2815a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f2816b;
    public final v.a c;
    public final Pools$Pool d;
    public final String e;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public l(Class cls, Class cls2, Class cls3, List list, v.a aVar, Pools$Pool pools$Pool) {
        this.f2815a = cls;
        this.f2816b = list;
        this.c = aVar;
        this.d = pools$Pool;
        this.e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d0 a(int i9, int i10, com.bumptech.glide.load.data.g gVar, h.h hVar, i iVar) {
        d0 d0VarA;
        h.l lVar;
        int iE;
        boolean z8;
        boolean z9;
        boolean z10;
        Object eVar;
        String str;
        Pools$Pool pools$Pool = this.d;
        Object objAcquire = pools$Pool.acquire();
        c0.g.c(objAcquire, "Argument must not be null");
        List list = (List) objAcquire;
        try {
            d0 d0VarB = b(gVar, i9, i10, hVar, list);
            pools$Pool.release(list);
            k kVar = (k) iVar.c;
            int i11 = iVar.f2793b;
            h hVar2 = kVar.f2796b;
            Class<?> cls = d0VarB.get().getClass();
            h.k kVarD = null;
            if (i11 != 4) {
                h.l lVarE = hVar2.e(cls);
                lVar = lVarE;
                d0VarA = lVarE.a(kVar.f2800i, d0VarB, kVar.f2804m, kVar.f2805n);
            } else {
                d0VarA = d0VarB;
                lVar = null;
            }
            if (!d0VarB.equals(d0VarA)) {
                d0VarB.recycle();
            }
            if (hVar2.c.a().d.d(d0VarA.d()) != null) {
                kVarD = hVar2.c.a().d.d(d0VarA.d());
                if (kVarD == null) {
                    throw new com.bumptech.glide.i(d0VarA.d());
                }
                iE = kVarD.e(kVar.f2807p);
            } else {
                iE = 3;
            }
            h.k kVar2 = kVarD;
            h.e eVar2 = kVar.f2811v;
            ArrayList arrayListB = hVar2.b();
            int size = arrayListB.size();
            int i12 = 0;
            while (true) {
                if (i12 >= size) {
                    z8 = false;
                    break;
                }
                if (((n.q) arrayListB.get(i12)).f3760a.equals(eVar2)) {
                    z8 = true;
                    break;
                }
                i12++;
            }
            switch (kVar.f2806o.f2818a) {
                default:
                    z9 = true;
                    if (((z8 || i11 != 3) && i11 != 1) || iE != 2) {
                    }
                case 0:
                case 1:
                    z9 = false;
                    break;
            }
            if (z9) {
                if (kVar2 == null) {
                    throw new com.bumptech.glide.i(d0VarA.get().getClass());
                }
                int iC = com.bumptech.glide.g.c(iE);
                if (iC == 0) {
                    z10 = true;
                    eVar = new e(kVar.f2811v, kVar.f2801j);
                } else {
                    if (iC != 1) {
                        if (iE == 1) {
                            str = "SOURCE";
                        } else if (iE != 2) {
                            str = iE != 3 ? "null" : "NONE";
                        } else {
                            str = "TRANSFORMED";
                        }
                        j1.i.k("Unknown strategy: ".concat(str));
                        return null;
                    }
                    z10 = true;
                    eVar = new f0(hVar2.c.f557a, kVar.f2811v, kVar.f2801j, kVar.f2804m, kVar.f2805n, lVar, cls, kVar.f2807p);
                }
                c0 c0Var = (c0) c0.f2753f.acquire();
                c0Var.e = 0;
                c0Var.d = z10;
                c0Var.c = d0VarA;
                a5.h hVar3 = kVar.f2798g;
                hVar3.c = eVar;
                hVar3.d = kVar2;
                hVar3.e = c0Var;
                d0VarA = c0Var;
            }
            return this.c.a(d0VarA, hVar);
        } catch (Throwable th) {
            pools$Pool.release(list);
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final d0 b(com.bumptech.glide.load.data.g gVar, int i9, int i10, h.h hVar, List list) throws z {
        List list2 = this.f2816b;
        int size = list2.size();
        d0 d0VarA = null;
        for (int i11 = 0; i11 < size; i11++) {
            h.j jVar = (h.j) list2.get(i11);
            try {
                if (jVar.b(gVar.d(), hVar)) {
                    d0VarA = jVar.a(gVar.d(), i9, i10, hVar);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + jVar, e);
                }
                list.add(e);
            }
            if (d0VarA != null) {
                break;
            }
        }
        if (d0VarA != null) {
            return d0VarA;
        }
        throw new z(this.e, new ArrayList(list));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        return "DecodePath{ dataClass=" + this.f2815a + ", decoders=" + this.f2816b + ", transcoder=" + this.c + '}';
    }
}
