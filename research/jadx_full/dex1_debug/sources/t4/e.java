package t4;

import android.util.Log;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map$Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import s1.x0;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e implements b, w4.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d f5388h = new d(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f5389a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f5390b;
    public final HashMap c;
    public final HashSet d;
    public final j e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicReference f5391f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w7.c f5392g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e(ArrayList arrayList, ArrayList arrayList2, w7.c cVar) {
        u4.j jVar = u4.j.f5471b;
        this.f5389a = new HashMap();
        this.f5390b = new HashMap();
        this.c = new HashMap();
        this.d = new HashSet();
        this.f5391f = new AtomicReference();
        j jVar2 = new j();
        this.e = jVar2;
        this.f5392g = cVar;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(a.c(jVar2, j.class, b5.b.class, b5.a.class));
        int i9 = 0;
        arrayList3.add(a.c(this, w4.a.class, new Class[0]));
        int size = arrayList2.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList2.get(i10);
            i10++;
            a aVar = (a) obj;
            if (aVar != null) {
                arrayList3.add(aVar);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size2 = arrayList.size();
        int i11 = 0;
        while (i11 < size2) {
            Object obj2 = arrayList.get(i11);
            i11++;
            arrayList4.add(obj2);
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((k5.b) it.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(this.f5392g.m(componentRegistrar));
                        it.remove();
                    }
                } catch (k e) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                for (Object obj3 : ((a) it2.next()).f5384b.toArray()) {
                    if (obj3.toString().contains("v8.t")) {
                        if (this.d.contains(obj3.toString())) {
                            it2.remove();
                            break;
                        }
                        this.d.add(obj3.toString());
                    }
                }
            }
            if (this.f5389a.isEmpty()) {
                o4.b.p(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.f5389a.keySet());
                arrayList6.addAll(arrayList3);
                o4.b.p(arrayList6);
            }
            int size3 = arrayList3.size();
            int i12 = 0;
            while (i12 < size3) {
                Object obj4 = arrayList3.get(i12);
                i12++;
                a aVar2 = (a) obj4;
                this.f5389a.put(aVar2, new l(new c5.b(2, this, aVar2)));
            }
            arrayList5.addAll(k(arrayList3));
            arrayList5.addAll(l());
            j();
        }
        int size4 = arrayList5.size();
        while (i9 < size4) {
            Object obj5 = arrayList5.get(i9);
            i9++;
            ((Runnable) obj5).run();
        }
        Boolean bool = (Boolean) this.f5391f.get();
        if (bool != null) {
            i(this.f5389a, bool.booleanValue());
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public final n a(p pVar) {
        k5.b bVarG = g(pVar);
        if (bVarG == null) {
            return new n(n.c, n.d);
        }
        return bVarG instanceof n ? (n) bVarG : new n(null, bVarG);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public final synchronized k5.b f(p pVar) {
        m mVar = (m) this.c.get(pVar);
        if (mVar != null) {
            return mVar;
        }
        return f5388h;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // t4.b
    public final synchronized k5.b g(p pVar) {
        e3.d.c(pVar, "Null interface requested.");
        return (k5.b) this.f5390b.get(pVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(HashMap map, boolean z8) {
        ArrayDeque arrayDeque;
        for (Map$Entry map$Entry : map.entrySet()) {
            a aVar = (a) map$Entry.getKey();
            k5.b bVar = (k5.b) map$Entry.getValue();
            int i9 = aVar.d;
            if (i9 == 1 || (i9 == 2 && z8)) {
                bVar.get();
            }
        }
        j jVar = this.e;
        synchronized (jVar) {
            try {
                arrayDeque = jVar.f5400b;
                if (arrayDeque != null) {
                    jVar.f5400b = null;
                } else {
                    arrayDeque = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            if (it.hasNext()) {
                throw com.bumptech.glide.g.b(it);
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void j() {
        HashMap map = this.f5390b;
        HashMap map2 = this.c;
        for (a aVar : this.f5389a.keySet()) {
            for (h hVar : aVar.c) {
                boolean z8 = hVar.f5398b == 2;
                p pVar = hVar.f5397a;
                if (z8 && !map2.containsKey(pVar)) {
                    Set set = Collections.EMPTY_SET;
                    m mVar = new m();
                    mVar.f5404b = null;
                    mVar.f5403a = Collections.newSetFromMap(new ConcurrentHashMap());
                    mVar.f5403a.addAll(set);
                    map2.put(pVar, mVar);
                } else if (map.containsKey(pVar)) {
                    continue;
                } else {
                    int i9 = hVar.f5398b;
                    if (i9 == 1) {
                        throw new i("Unsatisfied dependency for component " + aVar + ": " + pVar, 4);
                    }
                    if (i9 != 2) {
                        map.put(pVar, new n(n.c, n.d));
                    }
                }
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList k(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i9 = 0;
        while (i9 < size) {
            Object obj = arrayList.get(i9);
            i9++;
            a aVar = (a) obj;
            if (aVar.e == 0) {
                k5.b bVar = (k5.b) this.f5389a.get(aVar);
                for (p pVar : aVar.f5384b) {
                    HashMap map = this.f5390b;
                    if (map.containsKey(pVar)) {
                        arrayList2.add(new x0(5, (n) ((k5.b) map.get(pVar)), bVar));
                    } else {
                        map.put(pVar, bVar);
                    }
                }
            }
        }
        return arrayList2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList l() {
        HashMap map = this.c;
        ArrayList arrayList = new ArrayList();
        HashMap map2 = new HashMap();
        for (Map$Entry map$Entry : this.f5389a.entrySet()) {
            a aVar = (a) map$Entry.getKey();
            if (aVar.e != 0) {
                k5.b bVar = (k5.b) map$Entry.getValue();
                for (p pVar : aVar.f5384b) {
                    if (!map2.containsKey(pVar)) {
                        map2.put(pVar, new HashSet());
                    }
                    ((Set) map2.get(pVar)).add(bVar);
                }
            }
        }
        for (Map$Entry map$Entry2 : map2.entrySet()) {
            if (map.containsKey(map$Entry2.getKey())) {
                m mVar = (m) map.get(map$Entry2.getKey());
                Iterator it = ((Set) map$Entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new x0(6, mVar, (k5.b) it.next()));
                }
            } else {
                p pVar2 = (p) map$Entry2.getKey();
                Set set = (Set) ((Collection) map$Entry2.getValue());
                m mVar2 = new m();
                mVar2.f5404b = null;
                mVar2.f5403a = Collections.newSetFromMap(new ConcurrentHashMap());
                mVar2.f5403a.addAll(set);
                map.put(pVar2, mVar2);
            }
        }
        return arrayList;
    }
}
