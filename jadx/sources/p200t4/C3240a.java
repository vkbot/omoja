package p200t4;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import p050e3.C1461d;
import p063f6.C1580d;
import p173q0.C3042f;

/* JADX INFO: renamed from: t4.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3240a {

    /* JADX INFO: renamed from: a */
    public final String f9508a;

    /* JADX INFO: renamed from: b */
    public final Set f9509b;

    /* JADX INFO: renamed from: c */
    public final Set f9510c;

    /* JADX INFO: renamed from: d */
    public final int f9511d;

    /* JADX INFO: renamed from: e */
    public final int f9512e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC3242c f9513f;

    /* JADX INFO: renamed from: g */
    public final Set f9514g;

    public C3240a(String str, Set set, Set set2, int i10, int i11, InterfaceC3242c interfaceC3242c, Set set3) {
        this.f9508a = str;
        this.f9509b = Collections.unmodifiableSet(set);
        this.f9510c = Collections.unmodifiableSet(set2);
        this.f9511d = i10;
        this.f9512e = i11;
        this.f9513f = interfaceC3242c;
        this.f9514g = Collections.unmodifiableSet(set3);
    }

    /* JADX INFO: renamed from: a */
    public static C1580d m5180a(Class cls) {
        return new C1580d(cls, new Class[0]);
    }

    /* JADX INFO: renamed from: b */
    public static C1580d m5181b(C3255p c3255p) {
        return new C1580d(c3255p, new C3255p[0]);
    }

    /* JADX INFO: renamed from: c */
    public static C3240a m5182c(Object obj, Class cls, Class... clsArr) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        hashSet.add(C3255p.m5189a(cls));
        for (Class cls2 : clsArr) {
            C1461d.m2504c(cls2, "Null interface");
            hashSet.add(C3255p.m5189a(cls2));
        }
        return new C3240a(null, new HashSet(hashSet), new HashSet(hashSet2), 0, 0, new C3042f(4, obj), hashSet3);
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f9509b.toArray()) + ">{" + this.f9511d + ", type=" + this.f9512e + ", deps=" + Arrays.toString(this.f9510c.toArray()) + "}";
    }
}
