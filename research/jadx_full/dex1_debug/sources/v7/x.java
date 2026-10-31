package v7;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map$Entry;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;
import n7.f0;
import n7.f1;
import n7.g0;
import n7.h0;
import n7.j0;
import n7.k0;
import o7.f3;
import o7.t1;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class x extends j0 {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Logger f5584m = Logger.getLogger(x.class.getName());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final n7.e f5586g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f5587h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public n7.j f5589j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final AtomicInteger f5590k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public h0 f5591l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f5585f = new LinkedHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f3 f5588i = new f3();

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public x(n7.e eVar) {
        this.f5586g = eVar;
        f5584m.log(Level.FINE, "Created");
        this.f5590k = new AtomicInteger(new Random().nextInt());
        this.f5591l = new v();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final f1 a(g0 g0Var) {
        try {
            this.f5587h = true;
            l.d dVarG = g(g0Var);
            f1 f1Var = (f1) dVarG.c;
            if (!f1Var.f()) {
                this.f5587h = false;
                return f1Var;
            }
            j();
            for (i iVar : (List) dVarG.d) {
                iVar.f5547b.f();
                iVar.d = n7.j.f3944f;
                f5584m.log(Level.FINE, "Child balancer {0} deleted", iVar.f5546a);
            }
            this.f5587h = false;
            return f1Var;
        } catch (Throwable th) {
            this.f5587h = false;
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void c(f1 f1Var) {
        if (this.f5589j != n7.j.c) {
            this.f5586g.D(n7.j.d, new t1(f0.a(f1Var)));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // n7.j0
    public final void f() {
        Level level = Level.FINE;
        Logger logger = f5584m;
        logger.log(level, "Shutdown");
        LinkedHashMap linkedHashMap = this.f5585f;
        for (i iVar : linkedHashMap.values()) {
            iVar.f5547b.f();
            iVar.d = n7.j.f3944f;
            logger.log(Level.FINE, "Child balancer {0} deleted", iVar.f5546a);
        }
        linkedHashMap.clear();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l.d g(g0 g0Var) {
        LinkedHashMap linkedHashMap;
        j4.e eVarI;
        j jVar;
        n7.r rVar;
        Level level = Level.FINE;
        Logger logger = f5584m;
        logger.log(level, "Received resolution result: {0}", g0Var);
        HashMap map = new HashMap();
        List list = g0Var.f3935a;
        Iterator it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            linkedHashMap = this.f5585f;
            if (!zHasNext) {
                break;
            }
            j jVar2 = new j((n7.r) it.next());
            i iVar = (i) linkedHashMap.get(jVar2);
            if (iVar != null) {
                map.put(jVar2, iVar);
            } else {
                map.put(jVar2, new i(this, jVar2, this.f5588i, new t1(f0.e)));
            }
        }
        if (map.isEmpty()) {
            f1 f1VarH = f1.f3930m.h("NameResolver returned no usable address. " + g0Var);
            c(f1VarH);
            return new l.d(19, f1VarH, null);
        }
        for (Map$Entry map$Entry : map.entrySet()) {
            Object key = map$Entry.getKey();
            k0 k0Var = ((i) map$Entry.getValue()).c;
            ((i) map$Entry.getValue()).getClass();
            if (linkedHashMap.containsKey(key)) {
                i iVar2 = (i) linkedHashMap.get(key);
                if (iVar2.f5548f) {
                    iVar2.f5548f = false;
                }
            } else {
                linkedHashMap.put(key, (i) map$Entry.getValue());
            }
            i iVar3 = (i) linkedHashMap.get(key);
            if (key instanceof n7.r) {
                jVar = new j((n7.r) key);
            } else {
                o4.b.d("key is wrong type", key instanceof j);
                jVar = (j) key;
            }
            Iterator it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    rVar = null;
                    break;
                }
                rVar = (n7.r) it2.next();
            } while (!jVar.equals(new j(rVar)));
            o4.b.i(rVar, key + " no longer present in load balancer children");
            n7.b bVar = n7.b.f3886b;
            List listSingletonList = Collections.singletonList(rVar);
            n7.b bVar2 = n7.b.f3886b;
            Boolean bool = Boolean.TRUE;
            IdentityHashMap identityHashMap = new IdentityHashMap(1);
            identityHashMap.put(j0.e, bool);
            for (Map$Entry map$Entry2 : bVar2.f3887a.entrySet()) {
                if (!identityHashMap.containsKey(map$Entry2.getKey())) {
                    identityHashMap.put((n7.a) map$Entry2.getKey(), map$Entry2.getValue());
                }
            }
            g0 g0Var2 = new g0(listSingletonList, new n7.b(identityHashMap), null);
            ((i) linkedHashMap.get(key)).getClass();
            if (!iVar3.f5548f) {
                iVar3.f5547b.d(g0Var2);
            }
        }
        ArrayList arrayList = new ArrayList();
        Collection collectionKeySet = linkedHashMap.keySet();
        j4.c cVar = j4.e.c;
        if (collectionKeySet instanceof j4.a) {
            eVarI = ((j4.a) collectionKeySet).a();
            if (eVarI.h()) {
                Object[] array = eVarI.toArray(j4.a.f3044b);
                eVarI = j4.e.i(array.length, array);
            }
        } else {
            Object[] array2 = collectionKeySet.toArray();
            int length = array2.length;
            for (int i9 = 0; i9 < length; i9++) {
                if (array2[i9] == null) {
                    n0.b.n(ai.onnxruntime.a.e(i9, "at index "));
                    return null;
                }
            }
            eVarI = j4.e.i(array2.length, array2);
        }
        j4.c cVarJ = eVarI.j(0);
        while (cVarJ.hasNext()) {
            Object next = cVarJ.next();
            if (!map.containsKey(next)) {
                i iVar4 = (i) linkedHashMap.get(next);
                j jVar3 = iVar4.f5546a;
                if (!iVar4.f5548f) {
                    iVar4.f5549g.f5585f.remove(jVar3);
                    iVar4.f5548f = true;
                    logger.log(Level.FINE, "Child balancer {0} deactivated", jVar3);
                }
                arrayList.add(iVar4);
            }
        }
        return new l.d(19, f1.e, arrayList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final w h(Collection collection) {
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(((i) it.next()).e);
        }
        return new w(arrayList, this.f5590k);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(n7.j jVar, h0 h0Var) {
        if (jVar == this.f5589j && h0Var.equals(this.f5591l)) {
            return;
        }
        this.f5586g.D(jVar, h0Var);
        this.f5589j = jVar;
        this.f5591l = h0Var;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        n7.j jVar;
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = this.f5585f;
        Iterator it = linkedHashMap.values().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            jVar = n7.j.c;
            if (!zHasNext) {
                break;
            }
            i iVar = (i) it.next();
            if (!iVar.f5548f && iVar.d == jVar) {
                arrayList.add(iVar);
            }
        }
        if (!arrayList.isEmpty()) {
            i(jVar, h(arrayList));
            return;
        }
        Iterator it2 = linkedHashMap.values().iterator();
        while (it2.hasNext()) {
            n7.j jVar2 = ((i) it2.next()).d;
            n7.j jVar3 = n7.j.f3943b;
            if (jVar2 == jVar3 || jVar2 == n7.j.e) {
                i(jVar3, new v());
                return;
            }
        }
        i(n7.j.d, h(linkedHashMap.values()));
    }
}
