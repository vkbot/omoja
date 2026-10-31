package k;

import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final android.support.v4.media.h f3134a = new android.support.v4.media.h(25);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final f f3135b = new f(0);
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public final int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f3136f;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public g(int i9) {
        this.e = i9;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(int i9, Class cls) {
        NavigableMap navigableMapF = f(cls);
        Integer num = (Integer) navigableMapF.get(Integer.valueOf(i9));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapF.remove(Integer.valueOf(i9));
                return;
            } else {
                navigableMapF.put(Integer.valueOf(i9), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i9 + ", this: " + this);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(int i9) {
        while (this.f3136f > i9) {
            Object objS = this.f3134a.s();
            c0.g.b(objS);
            c cVarD = d(objS.getClass());
            this.f3136f -= cVarD.b() * cVarD.a(objS);
            a(cVarD.a(objS), objS.getClass());
            if (Log.isLoggable(cVarD.c(), 2)) {
                Log.v(cVarD.c(), "evicted: " + cVarD.a(objS));
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized Object c(int i9, Class cls) {
        e eVar;
        int i10;
        try {
            Integer num = (Integer) f(cls).ceilingKey(Integer.valueOf(i9));
            boolean z8 = num != null && ((i10 = this.f3136f) == 0 || this.e / i10 >= 2 || num.intValue() <= i9 * 8);
            f fVar = this.f3135b;
            if (z8) {
                int iIntValue = num.intValue();
                i iVarE = (i) ((ArrayDeque) fVar.f3128b).poll();
                if (iVarE == null) {
                    iVarE = fVar.e();
                }
                eVar = (e) iVarE;
                eVar.f3133b = iIntValue;
                eVar.c = cls;
            } else {
                i iVarE2 = (i) ((ArrayDeque) fVar.f3128b).poll();
                if (iVarE2 == null) {
                    iVarE2 = fVar.e();
                }
                eVar = (e) iVarE2;
                eVar.f3133b = i9;
                eVar.c = cls;
            }
        } catch (Throwable th) {
            throw th;
        }
        return e(eVar, cls);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final c d(Class cls) {
        c cVar;
        HashMap map = this.d;
        c cVar2 = (c) map.get(cls);
        if (cVar2 != null) {
            return cVar2;
        }
        if (cls.equals(int[].class)) {
            cVar = new c(1);
        } else {
            if (!cls.equals(byte[].class)) {
                j1.i.k("No array pool found for: ".concat(cls.getSimpleName()));
                return null;
            }
            cVar = new c(0);
        }
        map.put(cls, cVar);
        return cVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Object e(e eVar, Class cls) {
        c cVarD = d(cls);
        Object objH = this.f3134a.h(eVar);
        if (objH != null) {
            this.f3136f -= cVarD.b() * cVarD.a(objH);
            a(cVarD.a(objH), cls);
        }
        if (objH != null) {
            return objH;
        }
        if (Log.isLoggable(cVarD.c(), 2)) {
            Log.v(cVarD.c(), "Allocated " + eVar.f3133b + " bytes");
        }
        int i9 = eVar.f3133b;
        switch (cVarD.f3129a) {
            case 0:
                return new byte[i9];
            default:
                return new int[i9];
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final NavigableMap f(Class cls) {
        HashMap map = this.c;
        NavigableMap navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final synchronized void g(Object obj) {
        Class<?> cls = obj.getClass();
        c cVarD = d(cls);
        int iA = cVarD.a(obj);
        int iB = cVarD.b() * iA;
        if (iB <= this.e / 2) {
            f fVar = this.f3135b;
            i iVarE = (i) ((ArrayDeque) fVar.f3128b).poll();
            if (iVarE == null) {
                iVarE = fVar.e();
            }
            e eVar = (e) iVarE;
            eVar.f3133b = iA;
            eVar.c = cls;
            this.f3134a.q(eVar, obj);
            NavigableMap navigableMapF = f(cls);
            Integer num = (Integer) navigableMapF.get(Integer.valueOf(eVar.f3133b));
            Integer numValueOf = Integer.valueOf(eVar.f3133b);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapF.put(numValueOf, Integer.valueOf(iIntValue));
            this.f3136f += iB;
            b(this.e);
        }
    }
}
