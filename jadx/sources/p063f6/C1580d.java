package p063f6;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import p050e3.C1461d;
import p099j1.C1929i;
import p200t4.C3240a;
import p200t4.C3247h;
import p200t4.C3255p;
import p200t4.InterfaceC3242c;

/* JADX INFO: renamed from: f6.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1580d {

    /* JADX INFO: renamed from: a */
    public String f3909a;

    /* JADX INFO: renamed from: b */
    public int f3910b;

    /* JADX INFO: renamed from: c */
    public int f3911c;

    /* JADX INFO: renamed from: d */
    public final Object f3912d;

    /* JADX INFO: renamed from: e */
    public final Serializable f3913e;

    /* JADX INFO: renamed from: f */
    public Object f3914f;

    /* JADX INFO: renamed from: g */
    public Object f3915g;

    public C1580d(Class cls, Class[] clsArr) {
        this.f3909a = null;
        HashSet hashSet = new HashSet();
        this.f3912d = hashSet;
        this.f3913e = new HashSet();
        this.f3910b = 0;
        this.f3911c = 0;
        this.f3915g = new HashSet();
        hashSet.add(C3255p.m5189a(cls));
        for (Class cls2 : clsArr) {
            C1461d.m2504c(cls2, "Null interface");
            ((HashSet) this.f3912d).add(C3255p.m5189a(cls2));
        }
    }

    /* JADX INFO: renamed from: a */
    public void m2664a(C3247h c3247h) {
        if (((HashSet) this.f3912d).contains(c3247h.f9529a)) {
            C1929i.m3029k("Components are not allowed to depend on interfaces they themselves provide.");
        } else {
            ((HashSet) this.f3913e).add(c3247h);
        }
    }

    /* JADX INFO: renamed from: b */
    public C3240a m2665b() {
        if (((InterfaceC3242c) this.f3914f) != null) {
            return new C3240a(this.f3909a, new HashSet((HashSet) this.f3912d), new HashSet((HashSet) this.f3913e), this.f3910b, this.f3911c, (InterfaceC3242c) this.f3914f, (HashSet) this.f3915g);
        }
        C1929i.m3030l("Missing required property: factory.");
        return null;
    }

    public C1580d(byte[] bArr, String str, List list, String str2, int i10, int i11) {
        this.f3912d = bArr;
        this.f3909a = str;
        this.f3914f = list;
        this.f3913e = str2;
        this.f3910b = i11;
        this.f3911c = i10;
    }

    public C1580d(byte[] bArr, String str, ArrayList arrayList, String str2) {
        this(bArr, str, arrayList, str2, -1, -1);
    }

    public C1580d(C3255p c3255p, C3255p[] c3255pArr) {
        this.f3909a = null;
        HashSet hashSet = new HashSet();
        this.f3912d = hashSet;
        this.f3913e = new HashSet();
        this.f3910b = 0;
        this.f3911c = 0;
        this.f3915g = new HashSet();
        hashSet.add(c3255p);
        for (C3255p c3255p2 : c3255pArr) {
            C1461d.m2504c(c3255p2, "Null interface");
        }
        Collections.addAll((HashSet) this.f3912d, c3255pArr);
    }
}
