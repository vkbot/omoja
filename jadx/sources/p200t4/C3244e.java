package p200t4;

import android.util.Log;
import com.bumptech.glide.AbstractC1034g;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import p020b5.InterfaceC0902a;
import p020b5.InterfaceC0903b;
import p030c5.C0987b;
import p050e3.C1461d;
import p114k5.InterfaceC2050b;
import p155o4.AbstractC2587b;
import p190s1.RunnableC3180x0;
import p211u4.EnumC3297j;
import p229w4.InterfaceC3525a;
import p232w7.C3537c;

/* JADX INFO: renamed from: t4.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3244e implements InterfaceC3241b, InterfaceC3525a {

    /* JADX INFO: renamed from: h */
    public static final C3243d f9516h = new C3243d(0);

    /* JADX INFO: renamed from: a */
    public final HashMap f9517a;

    /* JADX INFO: renamed from: b */
    public final HashMap f9518b;

    /* JADX INFO: renamed from: c */
    public final HashMap f9519c;

    /* JADX INFO: renamed from: d */
    public final HashSet f9520d;

    /* JADX INFO: renamed from: e */
    public final C3249j f9521e;

    /* JADX INFO: renamed from: f */
    public final AtomicReference f9522f;

    /* JADX INFO: renamed from: g */
    public final C3537c f9523g;

    public C3244e(ArrayList arrayList, ArrayList arrayList2, C3537c c3537c) {
        EnumC3297j enumC3297j = EnumC3297j.f9650b;
        this.f9517a = new HashMap();
        this.f9518b = new HashMap();
        this.f9519c = new HashMap();
        this.f9520d = new HashSet();
        this.f9522f = new AtomicReference();
        C3249j c3249j = new C3249j();
        this.f9521e = c3249j;
        this.f9523g = c3537c;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(C3240a.m5182c(c3249j, C3249j.class, InterfaceC0903b.class, InterfaceC0902a.class));
        int i10 = 0;
        arrayList3.add(C3240a.m5182c(this, InterfaceC3525a.class, new Class[0]));
        int size = arrayList2.size();
        int i11 = 0;
        while (i11 < size) {
            Object obj = arrayList2.get(i11);
            i11++;
            C3240a c3240a = (C3240a) obj;
            if (c3240a != null) {
                arrayList3.add(c3240a);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        int size2 = arrayList.size();
        int i12 = 0;
        while (i12 < size2) {
            Object obj2 = arrayList.get(i12);
            i12++;
            arrayList4.add(obj2);
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it = arrayList4.iterator();
            while (it.hasNext()) {
                try {
                    ComponentRegistrar componentRegistrar = (ComponentRegistrar) ((InterfaceC2050b) it.next()).get();
                    if (componentRegistrar != null) {
                        arrayList3.addAll(this.f9523g.m5650m(componentRegistrar));
                        it.remove();
                    }
                } catch (C3250k e) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e);
                }
            }
            Iterator it2 = arrayList3.iterator();
            while (it2.hasNext()) {
                for (Object obj3 : ((C3240a) it2.next()).f9509b.toArray()) {
                    if (obj3.toString().contains("v8.t")) {
                        if (this.f9520d.contains(obj3.toString())) {
                            it2.remove();
                            break;
                        }
                        this.f9520d.add(obj3.toString());
                    }
                }
            }
            if (this.f9517a.isEmpty()) {
                AbstractC2587b.m4049p(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.f9517a.keySet());
                arrayList6.addAll(arrayList3);
                AbstractC2587b.m4049p(arrayList6);
            }
            int size3 = arrayList3.size();
            int i13 = 0;
            while (i13 < size3) {
                Object obj4 = arrayList3.get(i13);
                i13++;
                C3240a c3240a2 = (C3240a) obj4;
                this.f9517a.put(c3240a2, new C3251l(new C0987b(2, this, c3240a2)));
            }
            arrayList5.addAll(m5185k(arrayList3));
            arrayList5.addAll(m5186l());
            m5184j();
        }
        int size4 = arrayList5.size();
        while (i10 < size4) {
            Object obj5 = arrayList5.get(i10);
            i10++;
            ((Runnable) obj5).run();
        }
        Boolean bool = (Boolean) this.f9522f.get();
        if (bool != null) {
            m5183i(this.f9517a, bool.booleanValue());
        }
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: a */
    public final C3253n mo2239a(C3255p c3255p) {
        InterfaceC2050b interfaceC2050bMo2245g = mo2245g(c3255p);
        if (interfaceC2050bMo2245g == null) {
            return new C3253n(C3253n.f9540c, C3253n.f9541d);
        }
        return interfaceC2050bMo2245g instanceof C3253n ? (C3253n) interfaceC2050bMo2245g : new C3253n(null, interfaceC2050bMo2245g);
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: f */
    public final synchronized InterfaceC2050b mo2244f(C3255p c3255p) {
        C3252m c3252m = (C3252m) this.f9519c.get(c3255p);
        if (c3252m != null) {
            return c3252m;
        }
        return f9516h;
    }

    @Override // p200t4.InterfaceC3241b
    /* JADX INFO: renamed from: g */
    public final synchronized InterfaceC2050b mo2245g(C3255p c3255p) {
        C1461d.m2504c(c3255p, "Null interface requested.");
        return (InterfaceC2050b) this.f9518b.get(c3255p);
    }

    /* JADX INFO: renamed from: i */
    public final void m5183i(HashMap map, boolean z9) {
        ArrayDeque arrayDeque;
        for (Map.Entry entry : map.entrySet()) {
            C3240a c3240a = (C3240a) entry.getKey();
            InterfaceC2050b interfaceC2050b = (InterfaceC2050b) entry.getValue();
            int i10 = c3240a.f9511d;
            if (i10 == 1 || (i10 == 2 && z9)) {
                interfaceC2050b.get();
            }
        }
        C3249j c3249j = this.f9521e;
        synchronized (c3249j) {
            try {
                arrayDeque = c3249j.f9533b;
                if (arrayDeque != null) {
                    c3249j.f9533b = null;
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
                throw AbstractC1034g.m1295b(it);
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public final void m5184j() {
        HashMap map = this.f9518b;
        HashMap map2 = this.f9519c;
        for (C3240a c3240a : this.f9517a.keySet()) {
            for (C3247h c3247h : c3240a.f9510c) {
                boolean z9 = c3247h.f9530b == 2;
                C3255p c3255p = c3247h.f9529a;
                if (z9 && !map2.containsKey(c3255p)) {
                    Set set = Collections.EMPTY_SET;
                    C3252m c3252m = new C3252m();
                    c3252m.f9539b = null;
                    c3252m.f9538a = Collections.newSetFromMap(new ConcurrentHashMap());
                    c3252m.f9538a.addAll(set);
                    map2.put(c3255p, c3252m);
                } else if (map.containsKey(c3255p)) {
                    continue;
                } else {
                    int i10 = c3247h.f9530b;
                    if (i10 == 1) {
                        throw new C3248i("Unsatisfied dependency for component " + c3240a + ": " + c3255p, 4);
                    }
                    if (i10 != 2) {
                        map.put(c3255p, new C3253n(C3253n.f9540c, C3253n.f9541d));
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public final ArrayList m5185k(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            C3240a c3240a = (C3240a) obj;
            if (c3240a.f9512e == 0) {
                InterfaceC2050b interfaceC2050b = (InterfaceC2050b) this.f9517a.get(c3240a);
                for (C3255p c3255p : c3240a.f9509b) {
                    HashMap map = this.f9518b;
                    if (map.containsKey(c3255p)) {
                        arrayList2.add(new RunnableC3180x0(5, (C3253n) ((InterfaceC2050b) map.get(c3255p)), interfaceC2050b));
                    } else {
                        map.put(c3255p, interfaceC2050b);
                    }
                }
            }
        }
        return arrayList2;
    }

    /* JADX INFO: renamed from: l */
    public final ArrayList m5186l() {
        HashMap map = this.f9519c;
        ArrayList arrayList = new ArrayList();
        HashMap map2 = new HashMap();
        for (Map.Entry entry : this.f9517a.entrySet()) {
            C3240a c3240a = (C3240a) entry.getKey();
            if (c3240a.f9512e != 0) {
                InterfaceC2050b interfaceC2050b = (InterfaceC2050b) entry.getValue();
                for (C3255p c3255p : c3240a.f9509b) {
                    if (!map2.containsKey(c3255p)) {
                        map2.put(c3255p, new HashSet());
                    }
                    ((Set) map2.get(c3255p)).add(interfaceC2050b);
                }
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            if (map.containsKey(entry2.getKey())) {
                C3252m c3252m = (C3252m) map.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new RunnableC3180x0(6, c3252m, (InterfaceC2050b) it.next()));
                }
            } else {
                C3255p c3255p2 = (C3255p) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                C3252m c3252m2 = new C3252m();
                c3252m2.f9539b = null;
                c3252m2.f9538a = Collections.newSetFromMap(new ConcurrentHashMap());
                c3252m2.f9538a.addAll(set);
                map.put(c3255p2, c3252m2);
            }
        }
        return arrayList;
    }
}
