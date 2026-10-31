package com.bumptech.glide;

import androidx.core.util.Pools$SynchronizedPool;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import n.r;
import n.s;
import n.t;
import n.u;
import n.x;
import n.z;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f568a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i7.i f569b;
    public final l.d c;
    public final i7.i d;
    public final com.bumptech.glide.load.data.i e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final i7.i f570f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final i7.i f571g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l.d f572h = new l.d(21);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final x.b f573i = new x.b();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final d0.d f574j;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public j() {
        d0.d dVar = new d0.d(new Pools$SynchronizedPool(20), new d0.a(), new d0.b());
        this.f574j = dVar;
        this.f568a = new u(dVar);
        this.f569b = new i7.i(4);
        this.c = new l.d(22);
        this.d = new i7.i(6);
        this.e = new com.bumptech.glide.load.data.i();
        this.f570f = new i7.i(3);
        this.f571g = new i7.i(5);
        List listAsList = Arrays.asList("Animation", "Bitmap", "BitmapDrawable");
        ArrayList arrayList = new ArrayList(listAsList.size());
        arrayList.add("legacy_prepend_all");
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        arrayList.add("legacy_append");
        l.d dVar2 = this.c;
        synchronized (dVar2) {
            try {
                ArrayList arrayList2 = new ArrayList((ArrayList) dVar2.d);
                ((ArrayList) dVar2.d).clear();
                int size = arrayList.size();
                int i9 = 0;
                int i10 = 0;
                while (i10 < size) {
                    Object obj = arrayList.get(i10);
                    i10++;
                    ((ArrayList) dVar2.d).add((String) obj);
                }
                int size2 = arrayList2.size();
                while (i9 < size2) {
                    Object obj2 = arrayList2.get(i9);
                    i9++;
                    String str = (String) obj2;
                    if (!arrayList.contains(str)) {
                        ((ArrayList) dVar2.d).add(str);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void a(Class cls, h.b bVar) {
        i7.i iVar = this.f569b;
        synchronized (iVar) {
            iVar.f2690b.add(new x.a(cls, bVar));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b(Class cls, h.k kVar) {
        i7.i iVar = this.d;
        synchronized (iVar) {
            iVar.f2690b.add(new x.d(cls, kVar));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void c(Class cls, Class cls2, s sVar) {
        u uVar = this.f568a;
        synchronized (uVar) {
            z zVar = uVar.f3763a;
            synchronized (zVar) {
                try {
                    x xVar = new x(cls, cls2, sVar);
                    ArrayList arrayList = zVar.f3774a;
                    arrayList.add(arrayList.size(), xVar);
                } catch (Throwable th) {
                    throw th;
                }
            }
            uVar.f3764b.f564a.clear();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void d(String str, Class cls, Class cls2, h.j jVar) {
        l.d dVar = this.c;
        synchronized (dVar) {
            dVar.t(str).add(new x.c(cls, cls2, jVar));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final ArrayList e() {
        ArrayList arrayList;
        i7.i iVar = this.f571g;
        synchronized (iVar) {
            arrayList = iVar.f2690b;
        }
        if (arrayList.isEmpty()) {
            throw new i("Failed to find image header parser.");
        }
        return arrayList;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final List f(Object obj) {
        List listUnmodifiableList;
        u uVar = this.f568a;
        uVar.getClass();
        Class<?> cls = obj.getClass();
        synchronized (uVar) {
            t tVar = (t) uVar.f3764b.f564a.get(cls);
            listUnmodifiableList = tVar == null ? null : tVar.f3762a;
            if (listUnmodifiableList == null) {
                listUnmodifiableList = Collections.unmodifiableList(uVar.f3763a.a(cls));
                if (((t) uVar.f3764b.f564a.put(cls, new t(listUnmodifiableList))) != null) {
                    throw new IllegalStateException("Already cached loaders for model: " + cls);
                }
            }
        }
        if (listUnmodifiableList.isEmpty()) {
            throw new i("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }
        int size = listUnmodifiableList.size();
        List arrayList = Collections.EMPTY_LIST;
        boolean z8 = true;
        for (int i9 = 0; i9 < size; i9++) {
            r rVar = (r) listUnmodifiableList.get(i9);
            if (rVar.a(obj)) {
                if (z8) {
                    arrayList = new ArrayList(size - i9);
                    z8 = false;
                }
                arrayList.add(rVar);
            }
        }
        if (!arrayList.isEmpty()) {
            return arrayList;
        }
        throw new i("Found ModelLoaders for model class: " + listUnmodifiableList + ", but none that handle this specific model instance: " + obj);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final com.bumptech.glide.load.data.g g(Object obj) {
        com.bumptech.glide.load.data.g gVarB;
        com.bumptech.glide.load.data.i iVar = this.e;
        synchronized (iVar) {
            try {
                c0.g.b(obj);
                com.bumptech.glide.load.data.f fVar = (com.bumptech.glide.load.data.f) ((HashMap) iVar.c).get(obj.getClass());
                if (fVar == null) {
                    for (com.bumptech.glide.load.data.f fVar2 : ((HashMap) iVar.c).values()) {
                        if (fVar2.a().isAssignableFrom(obj.getClass())) {
                            fVar = fVar2;
                            break;
                        }
                    }
                }
                if (fVar == null) {
                    fVar = com.bumptech.glide.load.data.i.d;
                }
                gVarB = fVar.b(obj);
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVarB;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void h(com.bumptech.glide.load.data.f fVar) {
        com.bumptech.glide.load.data.i iVar = this.e;
        synchronized (iVar) {
            ((HashMap) iVar.c).put(fVar.a(), fVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void i(Class cls, Class cls2, v.a aVar) {
        i7.i iVar = this.f570f;
        synchronized (iVar) {
            iVar.f2690b.add(new v.b(cls, cls2, aVar));
        }
    }
}
