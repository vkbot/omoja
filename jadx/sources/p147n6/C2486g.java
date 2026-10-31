package p147n6;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import p063f6.C1577a;
import p156o6.C2598e;
import p169p6.C2975c;
import p260z5.AbstractC3756l;
import p260z5.C3753i;
import p260z5.C3757m;
import p260z5.EnumC3745a;
import p260z5.EnumC3748d;

/* JADX INFO: renamed from: n6.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2486g extends AbstractC2487h {

    /* JADX INFO: renamed from: c */
    public static final AbstractC2487h[] f6859c = new AbstractC2487h[0];

    /* JADX INFO: renamed from: d */
    public static final AbstractC2490k[] f6860d = new AbstractC2490k[0];

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f6861a;

    /* JADX INFO: renamed from: b */
    public final AbstractC2487h[] f6862b;

    public C2486g(Map map, int i10) {
        this.f6861a = i10;
        switch (i10) {
            case 1:
                Collection collection = map == null ? null : (Collection) map.get(EnumC3748d.f11174d);
                ArrayList arrayList = new ArrayList();
                if (collection != null) {
                    if (collection.contains(EnumC3745a.f11159i)) {
                        arrayList.add(new C2484e(0));
                    } else if (collection.contains(EnumC3745a.f11166p)) {
                        arrayList.add(new C2484e(3));
                    }
                    if (collection.contains(EnumC3745a.f11158h)) {
                        arrayList.add(new C2484e(2));
                    }
                    if (collection.contains(EnumC3745a.f11167q)) {
                        arrayList.add(new C2484e(1));
                    }
                }
                if (arrayList.isEmpty()) {
                    arrayList.add(new C2484e(0));
                    arrayList.add(new C2484e(2));
                    arrayList.add(new C2484e(1));
                }
                this.f6862b = (AbstractC2490k[]) arrayList.toArray(f6860d);
                break;
            default:
                Collection collection2 = map == null ? null : (Collection) map.get(EnumC3748d.f11174d);
                boolean z9 = (map == null || map.get(EnumC3748d.f11178h) == null) ? false : true;
                ArrayList arrayList2 = new ArrayList();
                if (collection2 != null) {
                    if (collection2.contains(EnumC3745a.f11159i) || collection2.contains(EnumC3745a.f11166p) || collection2.contains(EnumC3745a.f11158h) || collection2.contains(EnumC3745a.f11167q)) {
                        arrayList2.add(new C2486g(map, 1));
                    }
                    if (collection2.contains(EnumC3745a.f11154d)) {
                        arrayList2.add(new C2482c(z9));
                    }
                    if (collection2.contains(EnumC3745a.f11155e)) {
                        arrayList2.add(new C2483d());
                    }
                    if (collection2.contains(EnumC3745a.f11156f)) {
                        arrayList2.add(new C2481b());
                    }
                    if (collection2.contains(EnumC3745a.f11160j)) {
                        arrayList2.add(new C2485f());
                    }
                    if (collection2.contains(EnumC3745a.f11153c)) {
                        arrayList2.add(new C2480a());
                    }
                    if (collection2.contains(EnumC3745a.f11164n)) {
                        arrayList2.add(new C2598e());
                    }
                    if (collection2.contains(EnumC3745a.f11165o)) {
                        arrayList2.add(new C2975c());
                    }
                }
                if (arrayList2.isEmpty()) {
                    arrayList2.add(new C2486g(map, 1));
                    arrayList2.add(new C2482c(false));
                    arrayList2.add(new C2480a());
                    arrayList2.add(new C2483d());
                    arrayList2.add(new C2481b());
                    arrayList2.add(new C2485f());
                    arrayList2.add(new C2598e());
                    arrayList2.add(new C2975c());
                }
                this.f6862b = (AbstractC2487h[]) arrayList2.toArray(f6859c);
                break;
        }
    }

    @Override // p147n6.AbstractC2487h
    /* JADX INFO: renamed from: b */
    public final C3757m mo3857b(int i10, C1577a c1577a, Map map) throws C3753i {
        switch (this.f6861a) {
            case 0:
                for (AbstractC2487h abstractC2487h : this.f6862b) {
                    try {
                        return abstractC2487h.mo3857b(i10, c1577a, map);
                    } catch (AbstractC3756l unused) {
                    }
                }
                throw C3753i.f11192d;
            default:
                int[] iArrM3880m = AbstractC2490k.m3880m(c1577a);
                for (AbstractC2490k abstractC2490k : (AbstractC2490k[]) this.f6862b) {
                    try {
                        C3757m c3757mMo3866k = abstractC2490k.mo3866k(i10, c1577a, iArrM3880m, map);
                        boolean z9 = c3757mMo3866k.f11201d == EnumC3745a.f11159i && c3757mMo3866k.f11198a.charAt(0) == '0';
                        Collection collection = map == null ? null : (Collection) map.get(EnumC3748d.f11174d);
                        EnumC3745a enumC3745a = EnumC3745a.f11166p;
                        boolean z10 = collection == null || collection.contains(enumC3745a);
                        if (!z9 || !z10) {
                            return c3757mMo3866k;
                        }
                        C3757m c3757m = new C3757m(c3757mMo3866k.f11198a.substring(1), c3757mMo3866k.f11199b, c3757mMo3866k.f11200c, enumC3745a);
                        c3757m.m5987a(c3757mMo3866k.f11202e);
                        return c3757m;
                    } catch (AbstractC3756l unused2) {
                    }
                }
                throw C3753i.f11192d;
        }
    }

    @Override // p147n6.AbstractC2487h, p260z5.InterfaceC3755k
    public final void reset() {
        switch (this.f6861a) {
            case 0:
                for (AbstractC2487h abstractC2487h : this.f6862b) {
                    abstractC2487h.reset();
                }
                break;
            default:
                for (AbstractC2490k abstractC2490k : (AbstractC2490k[]) this.f6862b) {
                    abstractC2490k.getClass();
                }
                break;
        }
    }
}
