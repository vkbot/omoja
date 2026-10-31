package p097j;

import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.AbstractC1034g;
import com.bumptech.glide.C1036i;
import com.bumptech.glide.load.data.InterfaceC1046g;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import p006a5.C0023h;
import p025c0.AbstractC0938g;
import p077h.C1646h;
import p077h.InterfaceC1643e;
import p077h.InterfaceC1648j;
import p077h.InterfaceC1649k;
import p077h.InterfaceC1650l;
import p099j1.C1929i;
import p141n.C2456q;
import p215v.InterfaceC3311a;

/* JADX INFO: renamed from: j.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1900l {

    /* JADX INFO: renamed from: a */
    public final Class f4965a;

    /* JADX INFO: renamed from: b */
    public final List f4966b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC3311a f4967c;

    /* JADX INFO: renamed from: d */
    public final Pools.Pool f4968d;

    /* JADX INFO: renamed from: e */
    public final String f4969e;

    public C1900l(Class cls, Class cls2, Class cls3, List list, InterfaceC3311a interfaceC3311a, Pools.Pool pool) {
        this.f4965a = cls;
        this.f4966b = list;
        this.f4967c = interfaceC3311a;
        this.f4968d = pool;
        this.f4969e = "Failed DecodePath{" + cls.getSimpleName() + "->" + cls2.getSimpleName() + "->" + cls3.getSimpleName() + "}";
    }

    /* JADX INFO: renamed from: a */
    public final InterfaceC1889d0 m2958a(int i10, int i11, InterfaceC1046g interfaceC1046g, C1646h c1646h, C1897i c1897i) {
        InterfaceC1889d0 interfaceC1889d0Mo2732a;
        InterfaceC1650l interfaceC1650l;
        int iMo1143e;
        boolean z9;
        boolean z10;
        boolean z11;
        Object c1890e;
        String str;
        Pools.Pool pool = this.f4968d;
        Object objAcquire = pool.acquire();
        AbstractC0938g.m1072c(objAcquire, "Argument must not be null");
        List list = (List) objAcquire;
        try {
            InterfaceC1889d0 interfaceC1889d0M2959b = m2959b(interfaceC1046g, i10, i11, c1646h, list);
            pool.release(list);
            RunnableC1899k runnableC1899k = (RunnableC1899k) c1897i.f4930c;
            int i12 = c1897i.f4929b;
            C1896h c1896h = runnableC1899k.f4940b;
            Class<?> cls = interfaceC1889d0M2959b.get().getClass();
            InterfaceC1649k interfaceC1649kM2885d = null;
            if (i12 != 4) {
                InterfaceC1650l interfaceC1650lM2942e = c1896h.m2942e(cls);
                interfaceC1650l = interfaceC1650lM2942e;
                interfaceC1889d0Mo2732a = interfaceC1650lM2942e.mo2732a(runnableC1899k.f4947i, interfaceC1889d0M2959b, runnableC1899k.f4951m, runnableC1899k.f4952n);
            } else {
                interfaceC1889d0Mo2732a = interfaceC1889d0M2959b;
                interfaceC1650l = null;
            }
            if (!interfaceC1889d0M2959b.equals(interfaceC1889d0Mo2732a)) {
                interfaceC1889d0M2959b.recycle();
            }
            if (c1896h.f4913c.m1293a().f1099d.m2885d(interfaceC1889d0Mo2732a.mo2933d()) != null) {
                interfaceC1649kM2885d = c1896h.f4913c.m1293a().f1099d.m2885d(interfaceC1889d0Mo2732a.mo2933d());
                if (interfaceC1649kM2885d == null) {
                    throw new C1036i(interfaceC1889d0Mo2732a.mo2933d());
                }
                iMo1143e = interfaceC1649kM2885d.mo1143e(runnableC1899k.f4954p);
            } else {
                iMo1143e = 3;
            }
            InterfaceC1649k interfaceC1649k = interfaceC1649kM2885d;
            InterfaceC1643e interfaceC1643e = runnableC1899k.f4960v;
            ArrayList arrayListM2939b = c1896h.m2939b();
            int size = arrayListM2939b.size();
            int i13 = 0;
            while (true) {
                if (i13 >= size) {
                    z9 = false;
                    break;
                }
                if (((C2456q) arrayListM2939b.get(i13)).f6649a.equals(interfaceC1643e)) {
                    z9 = true;
                    break;
                }
                i13++;
            }
            switch (runnableC1899k.f4953o.f4973a) {
                default:
                    z10 = true;
                    if (((z9 || i12 != 3) && i12 != 1) || iMo1143e != 2) {
                    }
                case 0:
                case 1:
                    z10 = false;
                    break;
            }
            if (z10) {
                if (interfaceC1649k == null) {
                    throw new C1036i(interfaceC1889d0Mo2732a.get().getClass());
                }
                int iM1296c = AbstractC1034g.m1296c(iMo1143e);
                if (iM1296c == 0) {
                    z11 = true;
                    c1890e = new C1890e(runnableC1899k.f4960v, runnableC1899k.f4948j);
                } else {
                    if (iM1296c != 1) {
                        if (iMo1143e == 1) {
                            str = "SOURCE";
                        } else if (iMo1143e != 2) {
                            str = iMo1143e != 3 ? "null" : "NONE";
                        } else {
                            str = "TRANSFORMED";
                        }
                        C1929i.m3029k("Unknown strategy: ".concat(str));
                        return null;
                    }
                    z11 = true;
                    c1890e = new C1893f0(c1896h.f4913c.f1079a, runnableC1899k.f4960v, runnableC1899k.f4948j, runnableC1899k.f4951m, runnableC1899k.f4952n, interfaceC1650l, cls, runnableC1899k.f4954p);
                }
                C1887c0 c1887c0 = (C1887c0) C1887c0.f4869f.acquire();
                c1887c0.f4873e = 0;
                c1887c0.f4872d = z11;
                c1887c0.f4871c = interfaceC1889d0Mo2732a;
                C0023h c0023h = runnableC1899k.f4945g;
                c0023h.f81c = c1890e;
                c0023h.f82d = interfaceC1649k;
                c0023h.f83e = c1887c0;
                interfaceC1889d0Mo2732a = c1887c0;
            }
            return this.f4967c.mo67a(interfaceC1889d0Mo2732a, c1646h);
        } catch (Throwable th) {
            pool.release(list);
            throw th;
        }
    }

    /* JADX INFO: renamed from: b */
    public final InterfaceC1889d0 m2959b(InterfaceC1046g interfaceC1046g, int i10, int i11, C1646h c1646h, List list) throws C1914z {
        List list2 = this.f4966b;
        int size = list2.size();
        InterfaceC1889d0 interfaceC1889d0Mo2730a = null;
        for (int i12 = 0; i12 < size; i12++) {
            InterfaceC1648j interfaceC1648j = (InterfaceC1648j) list2.get(i12);
            try {
                if (interfaceC1648j.mo2731b(interfaceC1046g.mo1328d(), c1646h)) {
                    interfaceC1889d0Mo2730a = interfaceC1648j.mo2730a(interfaceC1046g.mo1328d(), i10, i11, c1646h);
                }
            } catch (IOException | OutOfMemoryError | RuntimeException e) {
                if (Log.isLoggable("DecodePath", 2)) {
                    Log.v("DecodePath", "Failed to decode data for " + interfaceC1648j, e);
                }
                list.add(e);
            }
            if (interfaceC1889d0Mo2730a != null) {
                break;
            }
        }
        if (interfaceC1889d0Mo2730a != null) {
            return interfaceC1889d0Mo2730a;
        }
        throw new C1914z(this.f4969e, new ArrayList(list));
    }

    public final String toString() {
        return "DecodePath{ dataClass=" + this.f4965a + ", decoders=" + this.f4966b + ", transcoder=" + this.f4967c + '}';
    }
}
