package p108k;

import android.support.v4.media.C0090h;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.NavigableMap;
import java.util.TreeMap;
import p025c0.AbstractC0938g;
import p099j1.C1929i;

/* JADX INFO: renamed from: k.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2019g {

    /* JADX INFO: renamed from: a */
    public final C0090h f5507a = new C0090h(25);

    /* JADX INFO: renamed from: b */
    public final C2018f f5508b = new C2018f(0);

    /* JADX INFO: renamed from: c */
    public final HashMap f5509c = new HashMap();

    /* JADX INFO: renamed from: d */
    public final HashMap f5510d = new HashMap();

    /* JADX INFO: renamed from: e */
    public final int f5511e;

    /* JADX INFO: renamed from: f */
    public int f5512f;

    public C2019g(int i10) {
        this.f5511e = i10;
    }

    /* JADX INFO: renamed from: a */
    public final void m3104a(int i10, Class cls) {
        NavigableMap navigableMapM3109f = m3109f(cls);
        Integer num = (Integer) navigableMapM3109f.get(Integer.valueOf(i10));
        if (num != null) {
            if (num.intValue() == 1) {
                navigableMapM3109f.remove(Integer.valueOf(i10));
                return;
            } else {
                navigableMapM3109f.put(Integer.valueOf(i10), Integer.valueOf(num.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + i10 + ", this: " + this);
    }

    /* JADX INFO: renamed from: b */
    public final void m3105b(int i10) {
        while (this.f5512f > i10) {
            Object objM252s = this.f5507a.m252s();
            AbstractC0938g.m1071b(objM252s);
            C2015c c2015cM3107d = m3107d(objM252s.getClass());
            this.f5512f -= c2015cM3107d.m3100b() * c2015cM3107d.m3099a(objM252s);
            m3104a(c2015cM3107d.m3099a(objM252s), objM252s.getClass());
            if (Log.isLoggable(c2015cM3107d.m3101c(), 2)) {
                Log.v(c2015cM3107d.m3101c(), "evicted: " + c2015cM3107d.m3099a(objM252s));
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final synchronized Object m3106c(int i10, Class cls) {
        C2017e c2017e;
        int i11;
        try {
            Integer num = (Integer) m3109f(cls).ceilingKey(Integer.valueOf(i10));
            boolean z9 = num != null && ((i11 = this.f5512f) == 0 || this.f5511e / i11 >= 2 || num.intValue() <= i10 * 8);
            C2018f c2018f = this.f5508b;
            if (z9) {
                int iIntValue = num.intValue();
                InterfaceC2021i interfaceC2021iM3103e = (InterfaceC2021i) ((ArrayDeque) c2018f.f5497b).poll();
                if (interfaceC2021iM3103e == null) {
                    interfaceC2021iM3103e = c2018f.m3103e();
                }
                c2017e = (C2017e) interfaceC2021iM3103e;
                c2017e.f5504b = iIntValue;
                c2017e.f5505c = cls;
            } else {
                InterfaceC2021i interfaceC2021iM3103e2 = (InterfaceC2021i) ((ArrayDeque) c2018f.f5497b).poll();
                if (interfaceC2021iM3103e2 == null) {
                    interfaceC2021iM3103e2 = c2018f.m3103e();
                }
                c2017e = (C2017e) interfaceC2021iM3103e2;
                c2017e.f5504b = i10;
                c2017e.f5505c = cls;
            }
        } catch (Throwable th) {
            throw th;
        }
        return m3108e(c2017e, cls);
    }

    /* JADX INFO: renamed from: d */
    public final C2015c m3107d(Class cls) {
        C2015c c2015c;
        HashMap map = this.f5510d;
        C2015c c2015c2 = (C2015c) map.get(cls);
        if (c2015c2 != null) {
            return c2015c2;
        }
        if (cls.equals(int[].class)) {
            c2015c = new C2015c(1);
        } else {
            if (!cls.equals(byte[].class)) {
                C1929i.m3029k("No array pool found for: ".concat(cls.getSimpleName()));
                return null;
            }
            c2015c = new C2015c(0);
        }
        map.put(cls, c2015c);
        return c2015c;
    }

    /* JADX INFO: renamed from: e */
    public final Object m3108e(C2017e c2017e, Class cls) {
        C2015c c2015cM3107d = m3107d(cls);
        Object objM244h = this.f5507a.m244h(c2017e);
        if (objM244h != null) {
            this.f5512f -= c2015cM3107d.m3100b() * c2015cM3107d.m3099a(objM244h);
            m3104a(c2015cM3107d.m3099a(objM244h), cls);
        }
        if (objM244h != null) {
            return objM244h;
        }
        if (Log.isLoggable(c2015cM3107d.m3101c(), 2)) {
            Log.v(c2015cM3107d.m3101c(), "Allocated " + c2017e.f5504b + " bytes");
        }
        int i10 = c2017e.f5504b;
        switch (c2015cM3107d.f5498a) {
            case 0:
                return new byte[i10];
            default:
                return new int[i10];
        }
    }

    /* JADX INFO: renamed from: f */
    public final NavigableMap m3109f(Class cls) {
        HashMap map = this.f5509c;
        NavigableMap navigableMap = (NavigableMap) map.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(cls, treeMap);
        return treeMap;
    }

    /* JADX INFO: renamed from: g */
    public final synchronized void m3110g(Object obj) {
        Class<?> cls = obj.getClass();
        C2015c c2015cM3107d = m3107d(cls);
        int iM3099a = c2015cM3107d.m3099a(obj);
        int iM3100b = c2015cM3107d.m3100b() * iM3099a;
        if (iM3100b <= this.f5511e / 2) {
            C2018f c2018f = this.f5508b;
            InterfaceC2021i interfaceC2021iM3103e = (InterfaceC2021i) ((ArrayDeque) c2018f.f5497b).poll();
            if (interfaceC2021iM3103e == null) {
                interfaceC2021iM3103e = c2018f.m3103e();
            }
            C2017e c2017e = (C2017e) interfaceC2021iM3103e;
            c2017e.f5504b = iM3099a;
            c2017e.f5505c = cls;
            this.f5507a.m251q(c2017e, obj);
            NavigableMap navigableMapM3109f = m3109f(cls);
            Integer num = (Integer) navigableMapM3109f.get(Integer.valueOf(c2017e.f5504b));
            Integer numValueOf = Integer.valueOf(c2017e.f5504b);
            int iIntValue = 1;
            if (num != null) {
                iIntValue = 1 + num.intValue();
            }
            navigableMapM3109f.put(numValueOf, Integer.valueOf(iIntValue));
            this.f5512f += iM3100b;
            m3105b(this.f5511e);
        }
    }
}
