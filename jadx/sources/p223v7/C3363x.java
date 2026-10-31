package p223v7;

import ai.onnxruntime.AbstractC0074a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;
import p102j4.AbstractC1962a;
import p102j4.AbstractC1966e;
import p102j4.C1964c;
import p120l.C2187d;
import p142n0.C2467b;
import p148n7.AbstractC2503e;
import p148n7.AbstractC2513h0;
import p148n7.AbstractC2519j0;
import p148n7.AbstractC2522k0;
import p148n7.C2491a;
import p148n7.C2494b;
import p148n7.C2507f0;
import p148n7.C2508f1;
import p148n7.C2510g0;
import p148n7.C2538r;
import p148n7.EnumC2518j;
import p155o4.AbstractC2587b;
import p157o7.C2633f3;
import p157o7.C2715t1;

/* JADX INFO: renamed from: v7.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3363x extends AbstractC2519j0 {

    /* JADX INFO: renamed from: m */
    public static final Logger f9831m = Logger.getLogger(C3363x.class.getName());

    /* JADX INFO: renamed from: g */
    public final AbstractC2503e f9833g;

    /* JADX INFO: renamed from: h */
    public boolean f9834h;

    /* JADX INFO: renamed from: j */
    public EnumC2518j f9836j;

    /* JADX INFO: renamed from: k */
    public final AtomicInteger f9837k;

    /* JADX INFO: renamed from: l */
    public AbstractC2513h0 f9838l;

    /* JADX INFO: renamed from: f */
    public final LinkedHashMap f9832f = new LinkedHashMap();

    /* JADX INFO: renamed from: i */
    public final C2633f3 f9835i = new C2633f3();

    public C3363x(AbstractC2503e abstractC2503e) {
        this.f9833g = abstractC2503e;
        f9831m.log(Level.FINE, "Created");
        this.f9837k = new AtomicInteger(new Random().nextInt());
        this.f9838l = new C3361v();
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: a */
    public final C2508f1 mo3944a(C2510g0 c2510g0) {
        try {
            this.f9834h = true;
            C2187d c2187dM5272g = m5272g(c2510g0);
            C2508f1 c2508f1 = (C2508f1) c2187dM5272g.f5705c;
            if (!c2508f1.m3932f()) {
                this.f9834h = false;
                return c2508f1;
            }
            m5275j();
            for (C3348i c3348i : (List) c2187dM5272g.f5706d) {
                c3348i.f9778b.mo3949f();
                c3348i.f9780d = EnumC2518j.f6972f;
                f9831m.log(Level.FINE, "Child balancer {0} deleted", c3348i.f9777a);
            }
            this.f9834h = false;
            return c2508f1;
        } catch (Throwable th) {
            this.f9834h = false;
            throw th;
        }
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: c */
    public final void mo3946c(C2508f1 c2508f1) {
        if (this.f9836j != EnumC2518j.f6969c) {
            this.f9833g.mo3892D(EnumC2518j.f6970d, new C2715t1(C2507f0.m3925a(c2508f1)));
        }
    }

    @Override // p148n7.AbstractC2519j0
    /* JADX INFO: renamed from: f */
    public final void mo3949f() {
        Level level = Level.FINE;
        Logger logger = f9831m;
        logger.log(level, "Shutdown");
        LinkedHashMap linkedHashMap = this.f9832f;
        for (C3348i c3348i : linkedHashMap.values()) {
            c3348i.f9778b.mo3949f();
            c3348i.f9780d = EnumC2518j.f6972f;
            logger.log(Level.FINE, "Child balancer {0} deleted", c3348i.f9777a);
        }
        linkedHashMap.clear();
    }

    /* JADX INFO: renamed from: g */
    public final C2187d m5272g(C2510g0 c2510g0) {
        LinkedHashMap linkedHashMap;
        AbstractC1966e abstractC1966eM3068i;
        C3349j c3349j;
        C2538r c2538r;
        Level level = Level.FINE;
        Logger logger = f9831m;
        logger.log(level, "Received resolution result: {0}", c2510g0);
        HashMap map = new HashMap();
        List list = c2510g0.f6951a;
        Iterator it = list.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            linkedHashMap = this.f9832f;
            if (!zHasNext) {
                break;
            }
            C3349j c3349j2 = new C3349j((C2538r) it.next());
            C3348i c3348i = (C3348i) linkedHashMap.get(c3349j2);
            if (c3348i != null) {
                map.put(c3349j2, c3348i);
            } else {
                map.put(c3349j2, new C3348i(this, c3349j2, this.f9835i, new C2715t1(C2507f0.f6931e)));
            }
        }
        int i10 = 19;
        Object obj = null;
        if (map.isEmpty()) {
            C2508f1 c2508f1M3934h = C2508f1.f6945m.m3934h("NameResolver returned no usable address. " + c2510g0);
            mo3946c(c2508f1M3934h);
            return new C2187d(i10, c2508f1M3934h, obj);
        }
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            AbstractC2522k0 abstractC2522k0 = ((C3348i) entry.getValue()).f9779c;
            ((C3348i) entry.getValue()).getClass();
            if (linkedHashMap.containsKey(key)) {
                C3348i c3348i2 = (C3348i) linkedHashMap.get(key);
                if (c3348i2.f9782f) {
                    c3348i2.f9782f = false;
                }
            } else {
                linkedHashMap.put(key, (C3348i) entry.getValue());
            }
            C3348i c3348i3 = (C3348i) linkedHashMap.get(key);
            if (key instanceof C2538r) {
                c3349j = new C3349j((C2538r) key);
            } else {
                AbstractC2587b.m4037d("key is wrong type", key instanceof C3349j);
                c3349j = (C3349j) key;
            }
            Iterator it2 = list.iterator();
            do {
                if (!it2.hasNext()) {
                    c2538r = null;
                    break;
                }
                c2538r = (C2538r) it2.next();
            } while (!c3349j.equals(new C3349j(c2538r)));
            AbstractC2587b.m4042i(c2538r, key + " no longer present in load balancer children");
            C2494b c2494b = C2494b.f6881b;
            List listSingletonList = Collections.singletonList(c2538r);
            C2494b c2494b2 = C2494b.f6881b;
            Boolean bool = Boolean.TRUE;
            IdentityHashMap identityHashMap = new IdentityHashMap(1);
            identityHashMap.put(AbstractC2519j0.f6977e, bool);
            for (Map.Entry entry2 : c2494b2.f6882a.entrySet()) {
                if (!identityHashMap.containsKey(entry2.getKey())) {
                    identityHashMap.put((C2491a) entry2.getKey(), entry2.getValue());
                }
            }
            C2510g0 c2510g1 = new C2510g0(listSingletonList, new C2494b(identityHashMap), null);
            ((C3348i) linkedHashMap.get(key)).getClass();
            if (!c3348i3.f9782f) {
                c3348i3.f9778b.mo3947d(c2510g1);
            }
        }
        ArrayList arrayList = new ArrayList();
        Collection collectionKeySet = linkedHashMap.keySet();
        C1964c c1964c = AbstractC1966e.f5354c;
        if (collectionKeySet instanceof AbstractC1962a) {
            abstractC1966eM3068i = ((AbstractC1962a) collectionKeySet).mo3057a();
            if (abstractC1966eM3068i.mo3062h()) {
                Object[] array = abstractC1966eM3068i.toArray(AbstractC1962a.f5343b);
                abstractC1966eM3068i = AbstractC1966e.m3068i(array.length, array);
            }
        } else {
            Object[] array2 = collectionKeySet.toArray();
            int length = array2.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (array2[i11] == null) {
                    C2467b.m3828n(AbstractC0074a.m154e(i11, "at index "));
                    return null;
                }
            }
            abstractC1966eM3068i = AbstractC1966e.m3068i(array2.length, array2);
        }
        C1964c c1964cListIterator = abstractC1966eM3068i.listIterator(0);
        while (c1964cListIterator.hasNext()) {
            Object next = c1964cListIterator.next();
            if (!map.containsKey(next)) {
                C3348i c3348i4 = (C3348i) linkedHashMap.get(next);
                C3349j c3349j3 = c3348i4.f9777a;
                if (!c3348i4.f9782f) {
                    c3348i4.f9783g.f9832f.remove(c3349j3);
                    c3348i4.f9782f = true;
                    logger.log(Level.FINE, "Child balancer {0} deactivated", c3349j3);
                }
                arrayList.add(c3348i4);
            }
        }
        return new C2187d(i10, C2508f1.f6937e, arrayList);
    }

    /* JADX INFO: renamed from: h */
    public final C3362w m5273h(Collection collection) {
        ArrayList arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(((C3348i) it.next()).f9781e);
        }
        return new C3362w(arrayList, this.f9837k);
    }

    /* JADX INFO: renamed from: i */
    public final void m5274i(EnumC2518j enumC2518j, AbstractC2513h0 abstractC2513h0) {
        if (enumC2518j == this.f9836j && abstractC2513h0.equals(this.f9838l)) {
            return;
        }
        this.f9833g.mo3892D(enumC2518j, abstractC2513h0);
        this.f9836j = enumC2518j;
        this.f9838l = abstractC2513h0;
    }

    /* JADX INFO: renamed from: j */
    public final void m5275j() {
        EnumC2518j enumC2518j;
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = this.f9832f;
        Iterator it = linkedHashMap.values().iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            enumC2518j = EnumC2518j.f6969c;
            if (!zHasNext) {
                break;
            }
            C3348i c3348i = (C3348i) it.next();
            if (!c3348i.f9782f && c3348i.f9780d == enumC2518j) {
                arrayList.add(c3348i);
            }
        }
        if (!arrayList.isEmpty()) {
            m5274i(enumC2518j, m5273h(arrayList));
            return;
        }
        Iterator it2 = linkedHashMap.values().iterator();
        while (it2.hasNext()) {
            EnumC2518j enumC2518j2 = ((C3348i) it2.next()).f9780d;
            EnumC2518j enumC2518j3 = EnumC2518j.f6968b;
            if (enumC2518j2 == enumC2518j3 || enumC2518j2 == EnumC2518j.f6971e) {
                m5274i(enumC2518j3, new C3361v());
                return;
            }
        }
        m5274i(EnumC2518j.f6970d, m5273h(linkedHashMap.values()));
    }
}
