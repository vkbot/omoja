package j;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map$Entry;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f2779a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f2780b = new ArrayList();
    public com.bumptech.glide.e c;
    public Object d;
    public int e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f2781f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Class f2782g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c0.h f2783h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public h.h f2784i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Map f2785j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Class f2786k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f2787l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f2788m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public h.e f2789n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public com.bumptech.glide.h f2790o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public m f2791p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f2792q;
    public boolean r;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList a() {
        boolean z8 = this.f2788m;
        ArrayList arrayList = this.f2780b;
        if (!z8) {
            this.f2788m = true;
            arrayList.clear();
            ArrayList arrayListB = b();
            int size = arrayListB.size();
            for (int i9 = 0; i9 < size; i9++) {
                n.q qVar = (n.q) arrayListB.get(i9);
                h.e eVar = qVar.f3760a;
                List list = qVar.f3761b;
                if (!arrayList.contains(eVar)) {
                    arrayList.add(qVar.f3760a);
                }
                for (int i10 = 0; i10 < list.size(); i10++) {
                    if (!arrayList.contains(list.get(i10))) {
                        arrayList.add(list.get(i10));
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList b() {
        boolean z8 = this.f2787l;
        ArrayList arrayList = this.f2779a;
        if (!z8) {
            this.f2787l = true;
            arrayList.clear();
            List listF = this.c.a().f(this.d);
            int size = listF.size();
            for (int i9 = 0; i9 < size; i9++) {
                n.q qVarB = ((n.r) listF.get(i9)).b(this.d, this.e, this.f2781f, this.f2784i);
                if (qVarB != null) {
                    arrayList.add(qVarB);
                }
            }
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r1v17, resolved type: java.lang.Class */
    /* JADX WARN: Multi-variable type inference failed */
    public final b0 c(Class cls) {
        b0 b0Var;
        Class cls2;
        Class cls3;
        Class cls4;
        b0 b0Var2;
        ArrayList arrayList;
        ArrayList arrayList2;
        v.a aVar;
        Class cls5 = cls;
        com.bumptech.glide.j jVarA = this.c.a();
        Class cls6 = this.f2782g;
        Class cls7 = this.f2786k;
        x.b bVar = jVarA.f573i;
        c0.n nVar = (c0.n) bVar.f5952b.getAndSet(null);
        if (nVar == null) {
            nVar = new c0.n();
        }
        nVar.f408a = cls5;
        nVar.f409b = cls6;
        nVar.c = cls7;
        synchronized (bVar.f5951a) {
            b0Var = (b0) bVar.f5951a.get(nVar);
        }
        bVar.f5952b.set(nVar);
        jVarA.f573i.getClass();
        if (x.b.c.equals(b0Var)) {
            return null;
        }
        if (b0Var != null) {
            return b0Var;
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayListU = jVarA.c.u(cls5, cls6);
        int size = arrayListU.size();
        int i9 = 0;
        while (i9 < size) {
            int i10 = i9 + 1;
            Class<?> cls8 = (Class) arrayListU.get(i9);
            ArrayList arrayListE = jVarA.f570f.e(cls8, cls7);
            int size2 = arrayListE.size();
            int i11 = 0;
            while (i11 < size2) {
                int i12 = i11 + 1;
                Class cls9 = (Class) arrayListE.get(i11);
                l.d dVar = jVarA.c;
                synchronized (dVar) {
                    arrayList = new ArrayList();
                    ArrayList arrayList4 = (ArrayList) dVar.d;
                    int size3 = arrayList4.size();
                    int i13 = 0;
                    while (i13 < size3) {
                        Object obj = arrayList4.get(i13);
                        int i14 = i13 + 1;
                        String str = (String) obj;
                        ArrayList arrayList5 = arrayListE;
                        List list = (List) ((HashMap) dVar.c).get(str);
                        if (list != null) {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                x.c cVar = (x.c) it.next();
                                Iterator it2 = it;
                                if (cVar.f5953a.isAssignableFrom(cls5) && cls8.isAssignableFrom(cVar.f5954b)) {
                                    arrayList.add(cVar.c);
                                }
                                it = it2;
                            }
                        }
                        arrayListE = arrayList5;
                        i13 = i14;
                    }
                    arrayList2 = arrayListE;
                }
                i7.i iVar = jVarA.f570f;
                synchronized (iVar) {
                    if (cls9.isAssignableFrom(cls8)) {
                        aVar = v.c.c;
                    } else {
                        ArrayList arrayList6 = iVar.f2690b;
                        int size4 = arrayList6.size();
                        int i15 = 0;
                        while (true) {
                            if (i15 >= size4) {
                                throw new IllegalArgumentException("No transcoder registered to transcode from " + cls8 + " to " + cls9);
                            }
                            Object obj2 = arrayList6.get(i15);
                            i15++;
                            v.b bVar2 = (v.b) obj2;
                            ArrayList arrayList7 = arrayList6;
                            if (bVar2.f5495a.isAssignableFrom(cls8) && cls9.isAssignableFrom(bVar2.f5496b)) {
                                aVar = bVar2.c;
                                break;
                            }
                            cls5 = cls;
                            arrayList6 = arrayList7;
                        }
                    }
                }
                arrayList3.add(new l(cls5, cls8, cls9, arrayList, aVar, jVarA.f574j));
                cls5 = cls;
                size2 = size2;
                i11 = i12;
                arrayListE = arrayList2;
            }
            cls5 = cls;
            i9 = i10;
        }
        if (arrayList3.isEmpty()) {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
            b0Var2 = null;
        } else {
            cls2 = cls;
            cls3 = cls6;
            cls4 = cls7;
            b0Var2 = new b0(cls2, cls3, cls4, arrayList3, jVarA.f574j);
        }
        x.b bVar3 = jVarA.f573i;
        synchronized (bVar3.f5951a) {
            bVar3.f5951a.put(new c0.n(cls2, cls3, cls4), b0Var2 != null ? b0Var2 : x.b.c);
        }
        return b0Var2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final h.b d(Object obj) {
        h.b bVar;
        i7.i iVar = this.c.a().f569b;
        Class<?> cls = obj.getClass();
        synchronized (iVar) {
            ArrayList arrayList = iVar.f2690b;
            int size = arrayList.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj2 = arrayList.get(i9);
                i9++;
                x.a aVar = (x.a) obj2;
                if (aVar.f5949a.isAssignableFrom(cls)) {
                    bVar = aVar.f5950b;
                }
            }
            bVar = null;
        }
        if (bVar != null) {
            return bVar;
        }
        throw new com.bumptech.glide.i(ai.onnxruntime.a.j(obj.getClass(), "Failed to find source encoder for data class: "));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final h.l e(Class cls) {
        h.l lVar = (h.l) this.f2785j.get(cls);
        if (lVar == null) {
            for (Map$Entry map$Entry : this.f2785j.entrySet()) {
                if (((Class) map$Entry.getKey()).isAssignableFrom(cls)) {
                    lVar = (h.l) map$Entry.getValue();
                    break;
                }
            }
        }
        if (lVar != null) {
            return lVar;
        }
        if (!this.f2785j.isEmpty() || !this.f2792q) {
            return p.c.f4540b;
        }
        androidx.navigation.b.p(cls, "Missing transformation for ", ". If you wish to ignore unknown resource types, use the optional transformation methods.");
        return null;
    }
}
