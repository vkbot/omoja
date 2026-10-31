package n6;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import z5.l;
import z5.m;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g extends h {
    public static final h[] c = new h[0];
    public static final k[] d = new k[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h[] f3874b;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(Map map, int i9) {
        this.f3873a = i9;
        switch (i9) {
            case 1:
                Collection collection = map == null ? null : (Collection) map.get(z5.d.d);
                ArrayList arrayList = new ArrayList();
                if (collection != null) {
                    if (collection.contains(z5.a.f6303i)) {
                        arrayList.add(new e(0));
                    } else if (collection.contains(z5.a.f6310p)) {
                        arrayList.add(new e(3));
                    }
                    if (collection.contains(z5.a.f6302h)) {
                        arrayList.add(new e(2));
                    }
                    if (collection.contains(z5.a.f6311q)) {
                        arrayList.add(new e(1));
                    }
                }
                if (arrayList.isEmpty()) {
                    arrayList.add(new e(0));
                    arrayList.add(new e(2));
                    arrayList.add(new e(1));
                }
                this.f3874b = (k[]) arrayList.toArray(d);
                break;
            default:
                Collection collection2 = map == null ? null : (Collection) map.get(z5.d.d);
                boolean z8 = (map == null || map.get(z5.d.f6317h) == null) ? false : true;
                ArrayList arrayList2 = new ArrayList();
                if (collection2 != null) {
                    if (collection2.contains(z5.a.f6303i) || collection2.contains(z5.a.f6310p) || collection2.contains(z5.a.f6302h) || collection2.contains(z5.a.f6311q)) {
                        arrayList2.add(new g(map, 1));
                    }
                    if (collection2.contains(z5.a.d)) {
                        arrayList2.add(new c(z8));
                    }
                    if (collection2.contains(z5.a.e)) {
                        arrayList2.add(new d());
                    }
                    if (collection2.contains(z5.a.f6300f)) {
                        arrayList2.add(new b());
                    }
                    if (collection2.contains(z5.a.f6304j)) {
                        arrayList2.add(new f());
                    }
                    if (collection2.contains(z5.a.c)) {
                        arrayList2.add(new a());
                    }
                    if (collection2.contains(z5.a.f6308n)) {
                        arrayList2.add(new o6.e());
                    }
                    if (collection2.contains(z5.a.f6309o)) {
                        arrayList2.add(new p6.c());
                    }
                }
                if (arrayList2.isEmpty()) {
                    arrayList2.add(new g(map, 1));
                    arrayList2.add(new c(false));
                    arrayList2.add(new a());
                    arrayList2.add(new d());
                    arrayList2.add(new b());
                    arrayList2.add(new f());
                    arrayList2.add(new o6.e());
                    arrayList2.add(new p6.c());
                }
                this.f3874b = (h[]) arrayList2.toArray(c);
                break;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h
    public final m b(int i9, f6.a aVar, Map map) throws z5.i {
        switch (this.f3873a) {
            case 0:
                for (h hVar : this.f3874b) {
                    try {
                        return hVar.b(i9, aVar, map);
                    } catch (l unused) {
                    }
                }
                throw z5.i.d;
            default:
                int[] iArrM = k.m(aVar);
                for (k kVar : (k[]) this.f3874b) {
                    try {
                        m mVarK = kVar.k(i9, aVar, iArrM, map);
                        boolean z8 = mVarK.d == z5.a.f6303i && mVarK.f6329a.charAt(0) == '0';
                        Collection collection = map == null ? null : (Collection) map.get(z5.d.d);
                        z5.a aVar2 = z5.a.f6310p;
                        boolean z9 = collection == null || collection.contains(aVar2);
                        if (!z8 || !z9) {
                            return mVarK;
                        }
                        m mVar = new m(mVarK.f6329a.substring(1), mVarK.f6330b, mVarK.c, aVar2);
                        mVar.a(mVarK.e);
                        return mVar;
                    } catch (l unused2) {
                    }
                }
                throw z5.i.d;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n6.h, z5.k
    public final void reset() {
        switch (this.f3873a) {
            case 0:
                for (h hVar : this.f3874b) {
                    hVar.reset();
                }
                break;
            default:
                for (k kVar : (k[]) this.f3874b) {
                    kVar.getClass();
                }
                break;
        }
    }
}
