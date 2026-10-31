package j;

import androidx.collection.ArrayMap;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class e0 implements g, com.bumptech.glide.load.data.d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f2762b;
    public final h c;
    public int d;
    public int e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public h.e f2763f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public List f2764g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f2765h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile n.q f2766i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public File f2767j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f0 f2768k;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public e0(h hVar, k kVar) {
        this.c = hVar;
        this.f2762b = kVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.g
    public final boolean c() {
        List list;
        boolean z8;
        List list2;
        boolean z9;
        ArrayList arrayListC;
        ArrayList arrayListA = this.c.a();
        if (arrayListA.isEmpty()) {
            return false;
        }
        h hVar = this.c;
        com.bumptech.glide.j jVarA = hVar.c.a();
        Class<?> cls = hVar.d.getClass();
        Class cls2 = hVar.f2782g;
        Class cls3 = hVar.f2786k;
        l.d dVar = jVarA.f572h;
        c0.n nVar = (c0.n) ((AtomicReference) dVar.c).getAndSet(null);
        if (nVar == null) {
            nVar = new c0.n(cls, cls2, cls3);
        } else {
            nVar.f408a = cls;
            nVar.f409b = cls2;
            nVar.c = cls3;
        }
        synchronized (((ArrayMap) dVar.d)) {
            list = (List) ((ArrayMap) dVar.d).get(nVar);
        }
        ((AtomicReference) dVar.c).set(nVar);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            n.u uVar = jVarA.f568a;
            synchronized (uVar) {
                arrayListC = uVar.f3763a.c(cls);
            }
            int size = arrayListC.size();
            int i9 = 0;
            while (i9 < size) {
                Object obj = arrayListC.get(i9);
                i9++;
                ArrayList arrayListU = jVarA.c.u((Class) obj, cls2);
                int size2 = arrayListU.size();
                int i10 = 0;
                while (i10 < size2) {
                    Object obj2 = arrayListU.get(i10);
                    i10++;
                    Class cls4 = (Class) obj2;
                    if (!jVarA.f570f.e(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            z8 = false;
            l.d dVar2 = jVarA.f572h;
            List listUnmodifiableList = Collections.unmodifiableList(arrayList);
            synchronized (((ArrayMap) dVar2.d)) {
                ((ArrayMap) dVar2.d).put(new c0.n(cls, cls2, cls3), listUnmodifiableList);
            }
            list2 = arrayList;
        } else {
            z8 = false;
            list2 = list;
        }
        if (list2.isEmpty()) {
            if (File.class.equals(this.c.f2786k)) {
                return z8;
            }
            StringBuilder sb = new StringBuilder("Failed to find any load path from ");
            sb.append(this.c.d.getClass());
            ai.onnxruntime.b.p(sb, " to ", this.c.f2786k);
            return false;
        }
        while (true) {
            List list3 = this.f2764g;
            if (list3 != null && this.f2765h < list3.size()) {
                this.f2766i = null;
                boolean z10 = z8;
                while (!z10 && this.f2765h < this.f2764g.size()) {
                    List list4 = this.f2764g;
                    int i11 = this.f2765h;
                    this.f2765h = i11 + 1;
                    n.r rVar = (n.r) list4.get(i11);
                    File file = this.f2767j;
                    h hVar2 = this.c;
                    this.f2766i = rVar.b(file, hVar2.e, hVar2.f2781f, hVar2.f2784i);
                    if (this.f2766i != null && this.c.c(this.f2766i.c.a()) != null) {
                        this.f2766i.c.e(this.c.f2790o, this);
                        z10 = true;
                    }
                }
                return z10;
            }
            int i12 = this.e + 1;
            this.e = i12;
            if (i12 >= list2.size()) {
                int i13 = this.d + 1;
                this.d = i13;
                if (i13 >= arrayListA.size()) {
                    return z8;
                }
                this.e = z8 ? 1 : 0;
            }
            h.e eVar = (h.e) arrayListA.get(this.d);
            Class cls5 = (Class) list2.get(this.e);
            h.l lVarE = this.c.e(cls5);
            h hVar3 = this.c;
            this.f2768k = new f0(hVar3.c.f557a, eVar, hVar3.f2789n, hVar3.e, hVar3.f2781f, lVarE, cls5, hVar3.f2784i);
            File fileC = hVar3.f2783h.a().c(this.f2768k);
            this.f2767j = fileC;
            if (fileC != null) {
                this.f2763f = eVar;
                this.f2764g = this.c.c.a().f(fileC);
                z9 = false;
                this.f2765h = 0;
            } else {
                z9 = false;
            }
            z8 = z9;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // j.g
    public final void cancel() {
        n.q qVar = this.f2766i;
        if (qVar != null) {
            qVar.c.cancel();
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.d
    public final void d(Exception exc) {
        this.f2762b.b(this.f2768k, exc, this.f2766i.c, 4);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // com.bumptech.glide.load.data.d
    public final void f(Object obj) {
        this.f2762b.a(this.f2763f, obj, this.f2766i.c, 4, this.f2768k);
    }
}
