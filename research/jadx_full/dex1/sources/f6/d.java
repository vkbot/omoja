package f6;

import j1.i;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import t4.h;
import t4.p;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f2261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f2262b;
    public int c;
    public final Object d;
    public final Serializable e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f2263f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f2264g;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public d(Class cls, Class[] clsArr) {
        this.f2261a = null;
        HashSet hashSet = new HashSet();
        this.d = hashSet;
        this.e = new HashSet();
        this.f2262b = 0;
        this.c = 0;
        this.f2264g = new HashSet();
        hashSet.add(p.a(cls));
        for (Class cls2 : clsArr) {
            e3.d.c(cls2, "Null interface");
            ((HashSet) this.d).add(p.a(cls2));
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public void a(h hVar) {
        if (((HashSet) this.d).contains(hVar.f5397a)) {
            i.k("Components are not allowed to depend on interfaces they themselves provide.");
        } else {
            ((HashSet) this.e).add(hVar);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public t4.a b() {
        if (((t4.c) this.f2263f) != null) {
            return new t4.a(this.f2261a, new HashSet((HashSet) this.d), new HashSet((HashSet) this.e), this.f2262b, this.c, (t4.c) this.f2263f, (HashSet) this.f2264g);
        }
        i.l("Missing required property: factory.");
        return null;
    }

    public d(byte[] bArr, String str, List list, String str2, int i9, int i10) {
        this.d = bArr;
        this.f2261a = str;
        this.f2263f = list;
        this.e = str2;
        this.f2262b = i10;
        this.c = i9;
    }

    public d(byte[] bArr, String str, ArrayList arrayList, String str2) {
        this(bArr, str, arrayList, str2, -1, -1);
    }

    public d(p pVar, p[] pVarArr) {
        this.f2261a = null;
        HashSet hashSet = new HashSet();
        this.d = hashSet;
        this.e = new HashSet();
        this.f2262b = 0;
        this.c = 0;
        this.f2264g = new HashSet();
        hashSet.add(pVar);
        for (p pVar2 : pVarArr) {
            e3.d.c(pVar2, "Null interface");
        }
        Collections.addAll((HashSet) this.d, pVarArr);
    }
}
