package p244y;

import ai.onnxruntime.AbstractC0074a;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.AbstractC1030c;
import com.bumptech.glide.AbstractC1031d;
import com.bumptech.glide.C1032e;
import com.bumptech.glide.EnumC1035h;
import com.google.protobuf.AbstractC1178q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p001a0.C0001a;
import p006a5.C0023h;
import p025c0.AbstractC0938g;
import p025c0.AbstractC0941j;
import p025c0.AbstractC0947p;
import p025c0.C0934c;
import p025c0.ExecutorC0937f;
import p037d0.C1240h;
import p077h.C1646h;
import p077h.InterfaceC1643e;
import p097j.C1901m;
import p097j.C1906r;
import p097j.C1910v;
import p097j.C1914z;
import p097j.InterfaceC1889d0;
import p099j1.C1929i;
import p254z.InterfaceC3690d;

/* JADX INFO: renamed from: y.f */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3621f implements InterfaceC3618c {

    /* JADX INFO: renamed from: C */
    public static final boolean f10726C = Log.isLoggable("GlideRequest", 2);

    /* JADX INFO: renamed from: A */
    public final RuntimeException f10727A;

    /* JADX INFO: renamed from: B */
    public int f10728B;

    /* JADX INFO: renamed from: a */
    public final String f10729a;

    /* JADX INFO: renamed from: b */
    public final C1240h f10730b;

    /* JADX INFO: renamed from: c */
    public final Object f10731c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC3619d f10732d;

    /* JADX INFO: renamed from: e */
    public final Context f10733e;

    /* JADX INFO: renamed from: f */
    public final C1032e f10734f;

    /* JADX INFO: renamed from: g */
    public final Object f10735g;

    /* JADX INFO: renamed from: h */
    public final Class f10736h;

    /* JADX INFO: renamed from: i */
    public final AbstractC3616a f10737i;

    /* JADX INFO: renamed from: j */
    public final int f10738j;

    /* JADX INFO: renamed from: k */
    public final int f10739k;

    /* JADX INFO: renamed from: l */
    public final EnumC1035h f10740l;

    /* JADX INFO: renamed from: m */
    public final InterfaceC3690d f10741m;

    /* JADX INFO: renamed from: n */
    public final List f10742n;

    /* JADX INFO: renamed from: o */
    public final C0001a f10743o;

    /* JADX INFO: renamed from: p */
    public final ExecutorC0937f f10744p;

    /* JADX INFO: renamed from: q */
    public InterfaceC1889d0 f10745q;

    /* JADX INFO: renamed from: r */
    public C0023h f10746r;

    /* JADX INFO: renamed from: s */
    public long f10747s;

    /* JADX INFO: renamed from: t */
    public volatile C1906r f10748t;

    /* JADX INFO: renamed from: u */
    public Drawable f10749u;

    /* JADX INFO: renamed from: v */
    public Drawable f10750v;

    /* JADX INFO: renamed from: w */
    public Drawable f10751w;

    /* JADX INFO: renamed from: x */
    public int f10752x;

    /* JADX INFO: renamed from: y */
    public int f10753y;

    /* JADX INFO: renamed from: z */
    public boolean f10754z;

    public C3621f(Context context, C1032e c1032e, Object obj, Object obj2, Class cls, AbstractC3616a abstractC3616a, int i10, int i11, EnumC1035h enumC1035h, InterfaceC3690d interfaceC3690d, ArrayList arrayList, InterfaceC3619d interfaceC3619d, C1906r c1906r, C0001a c0001a) {
        ExecutorC0937f executorC0937f = AbstractC0938g.f794a;
        this.f10729a = f10726C ? String.valueOf(hashCode()) : null;
        this.f10730b = new C1240h();
        this.f10731c = obj;
        this.f10733e = context;
        this.f10734f = c1032e;
        this.f10735g = obj2;
        this.f10736h = cls;
        this.f10737i = abstractC3616a;
        this.f10738j = i10;
        this.f10739k = i11;
        this.f10740l = enumC1035h;
        this.f10741m = interfaceC3690d;
        this.f10742n = arrayList;
        this.f10732d = interfaceC3619d;
        this.f10748t = c1906r;
        this.f10743o = c0001a;
        this.f10744p = executorC0937f;
        this.f10728B = 1;
        if (this.f10727A == null && ((Map) c1032e.f1086h.f8867c).containsKey(AbstractC1031d.class)) {
            this.f10727A = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: a */
    public final boolean mo5778a() {
        boolean z9;
        synchronized (this.f10731c) {
            z9 = this.f10728B == 4;
        }
        return z9;
    }

    /* JADX INFO: renamed from: b */
    public final void m5789b() {
        if (this.f10754z) {
            C1929i.m3030l("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
            return;
        }
        this.f10730b.m2224a();
        this.f10741m.mo1372f(this);
        C0023h c0023h = this.f10746r;
        if (c0023h != null) {
            synchronized (((C1906r) c0023h.f83e)) {
                ((C1910v) c0023h.f81c).m2973g((C3621f) c0023h.f82d);
            }
            this.f10746r = null;
        }
    }

    /* JADX INFO: renamed from: c */
    public final Drawable m5790c() {
        if (this.f10750v == null) {
            AbstractC3616a abstractC3616a = this.f10737i;
            abstractC3616a.getClass();
            this.f10750v = null;
            int i10 = abstractC3616a.f10707f;
            if (i10 > 0) {
                abstractC3616a.getClass();
                Context context = this.f10733e;
                this.f10750v = AbstractC1030c.m1259m(context, context, i10, context.getTheme());
            }
        }
        return this.f10750v;
    }

    @Override // p244y.InterfaceC3618c
    public final void clear() {
        synchronized (this.f10731c) {
            try {
                if (this.f10754z) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f10730b.m2224a();
                if (this.f10728B == 6) {
                    return;
                }
                m5789b();
                InterfaceC1889d0 interfaceC1889d0 = this.f10745q;
                if (interfaceC1889d0 != null) {
                    this.f10745q = null;
                } else {
                    interfaceC1889d0 = null;
                }
                InterfaceC3619d interfaceC3619d = this.f10732d;
                if (interfaceC3619d == null || interfaceC3619d.mo5783f(this)) {
                    this.f10741m.mo1376j(m5790c());
                }
                this.f10728B = 6;
                if (interfaceC1889d0 != null) {
                    this.f10748t.getClass();
                    C1906r.m2962f(interfaceC1889d0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: d */
    public final void mo5781d() {
        synchronized (this.f10731c) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m5791e(String str) {
        StringBuilder sbM172w = AbstractC0074a.m172w(str, " this: ");
        sbM172w.append(this.f10729a);
        Log.v("GlideRequest", sbM172w.toString());
    }

    /* JADX INFO: renamed from: f */
    public final void m5792f(C1914z c1914z, int i10) {
        Drawable drawableM5790c;
        this.f10730b.m2224a();
        synchronized (this.f10731c) {
            try {
                c1914z.getClass();
                int i11 = this.f10734f.f1087i;
                if (i11 <= i10) {
                    Log.w("Glide", "Load failed for [" + this.f10735g + "] with dimensions [" + this.f10752x + "x" + this.f10753y + "]", c1914z);
                    if (i11 <= 4) {
                        c1914z.m2979d();
                    }
                }
                this.f10746r = null;
                this.f10728B = 5;
                InterfaceC3619d interfaceC3619d = this.f10732d;
                if (interfaceC3619d != null) {
                    interfaceC3619d.mo5779b(this);
                }
                boolean z9 = true;
                this.f10754z = true;
                try {
                    List list = this.f10742n;
                    if (list != null) {
                        Iterator it = list.iterator();
                        if (it.hasNext()) {
                            if (it.next() != null) {
                                throw new ClassCastException();
                            }
                            InterfaceC3619d interfaceC3619d2 = this.f10732d;
                            if (interfaceC3619d2 == null) {
                                throw null;
                            }
                            interfaceC3619d2.getRoot().mo5778a();
                            throw null;
                        }
                    }
                    InterfaceC3619d interfaceC3619d3 = this.f10732d;
                    if (interfaceC3619d3 != null && !interfaceC3619d3.mo5784g(this)) {
                        z9 = false;
                    }
                    if (z9) {
                        if (this.f10735g == null) {
                            if (this.f10751w == null) {
                                this.f10737i.getClass();
                                this.f10751w = null;
                            }
                            drawableM5790c = this.f10751w;
                        } else {
                            drawableM5790c = null;
                        }
                        if (drawableM5790c == null) {
                            if (this.f10749u == null) {
                                AbstractC3616a abstractC3616a = this.f10737i;
                                abstractC3616a.getClass();
                                this.f10749u = null;
                                int i12 = abstractC3616a.f10706e;
                                if (i12 > 0) {
                                    Context context = this.f10733e;
                                    this.f10737i.getClass();
                                    this.f10749u = AbstractC1030c.m1259m(context, context, i12, context.getTheme());
                                }
                            }
                            drawableM5790c = this.f10749u;
                        }
                        if (drawableM5790c == null) {
                            drawableM5790c = m5790c();
                        }
                        this.f10741m.mo1371d(drawableM5790c);
                    }
                    this.f10754z = false;
                } catch (Throwable th) {
                    this.f10754z = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX INFO: renamed from: g */
    public final void m5793g(InterfaceC1889d0 interfaceC1889d0, int i10) {
        this.f10730b.m2224a();
        InterfaceC1889d0 interfaceC1889d1 = null;
        try {
            synchronized (this.f10731c) {
                try {
                    this.f10746r = null;
                    if (interfaceC1889d0 == null) {
                        m5792f(new C1914z("Expected to receive a Resource<R> with an object of " + this.f10736h + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = interfaceC1889d0.get();
                    try {
                        if (obj == null || !this.f10736h.isAssignableFrom(obj.getClass())) {
                            this.f10745q = null;
                            StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                            sb.append(this.f10736h);
                            sb.append(" but instead got ");
                            sb.append(obj != null ? obj.getClass() : "");
                            sb.append("{");
                            sb.append(obj);
                            sb.append("} inside Resource{");
                            sb.append(interfaceC1889d0);
                            sb.append("}.");
                            sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                            m5792f(new C1914z(sb.toString()), 5);
                        } else {
                            InterfaceC3619d interfaceC3619d = this.f10732d;
                            if (interfaceC3619d == null || interfaceC3619d.mo5782e(this)) {
                                m5794l(interfaceC1889d0, obj, i10);
                                return;
                            } else {
                                this.f10745q = null;
                                this.f10728B = 4;
                            }
                        }
                        this.f10748t.getClass();
                        C1906r.m2962f(interfaceC1889d0);
                    } catch (Throwable th) {
                        interfaceC1889d1 = interfaceC1889d0;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (interfaceC1889d1 != null) {
                this.f10748t.getClass();
                C1906r.m2962f(interfaceC1889d1);
            }
            throw th3;
        }
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: h */
    public final boolean mo5785h() {
        boolean z9;
        synchronized (this.f10731c) {
            z9 = this.f10728B == 6;
        }
        return z9;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: i */
    public final void mo5786i() {
        synchronized (this.f10731c) {
            try {
                if (this.f10754z) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f10730b.m2224a();
                int i10 = AbstractC0941j.f799b;
                this.f10747s = SystemClock.elapsedRealtimeNanos();
                if (this.f10735g == null) {
                    if (AbstractC0947p.m1092i(this.f10738j, this.f10739k)) {
                        this.f10752x = this.f10738j;
                        this.f10753y = this.f10739k;
                    }
                    if (this.f10751w == null) {
                        this.f10737i.getClass();
                        this.f10751w = null;
                    }
                    m5792f(new C1914z("Received null model"), this.f10751w == null ? 5 : 3);
                    return;
                }
                int i11 = this.f10728B;
                if (i11 == 2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (i11 == 4) {
                    m5793g(this.f10745q, 5);
                    return;
                }
                List list = this.f10742n;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                    }
                }
                this.f10728B = 3;
                if (AbstractC0947p.m1092i(this.f10738j, this.f10739k)) {
                    m5795m(this.f10738j, this.f10739k);
                } else {
                    this.f10741m.mo1369a(this);
                }
                int i12 = this.f10728B;
                if (i12 == 2 || i12 == 3) {
                    InterfaceC3619d interfaceC3619d = this.f10732d;
                    if (interfaceC3619d == null || interfaceC3619d.mo5784g(this)) {
                        this.f10741m.mo1373g(m5790c());
                    }
                }
                if (f10726C) {
                    m5791e("finished run method in " + AbstractC0941j.m1076a(this.f10747s));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p244y.InterfaceC3618c
    public final boolean isRunning() {
        boolean z9;
        synchronized (this.f10731c) {
            int i10 = this.f10728B;
            z9 = i10 == 2 || i10 == 3;
        }
        return z9;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: j */
    public final boolean mo5787j() {
        boolean z9;
        synchronized (this.f10731c) {
            z9 = this.f10728B == 4;
        }
        return z9;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: k */
    public final boolean mo5788k(InterfaceC3618c interfaceC3618c) {
        int i10;
        int i11;
        Object obj;
        Class cls;
        AbstractC3616a abstractC3616a;
        EnumC1035h enumC1035h;
        int size;
        int i12;
        int i13;
        Object obj2;
        Class cls2;
        AbstractC3616a abstractC3616a2;
        EnumC1035h enumC1035h2;
        int size2;
        boolean zEquals;
        boolean zM5765f;
        if (!(interfaceC3618c instanceof C3621f)) {
            return false;
        }
        synchronized (this.f10731c) {
            try {
                i10 = this.f10738j;
                i11 = this.f10739k;
                obj = this.f10735g;
                cls = this.f10736h;
                abstractC3616a = this.f10737i;
                enumC1035h = this.f10740l;
                List list = this.f10742n;
                size = list != null ? list.size() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        C3621f c3621f = (C3621f) interfaceC3618c;
        synchronized (c3621f.f10731c) {
            try {
                i12 = c3621f.f10738j;
                i13 = c3621f.f10739k;
                obj2 = c3621f.f10735g;
                cls2 = c3621f.f10736h;
                abstractC3616a2 = c3621f.f10737i;
                enumC1035h2 = c3621f.f10740l;
                List list2 = c3621f.f10742n;
                size2 = list2 != null ? list2.size() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i10 == i12 && i11 == i13) {
            char[] cArr = AbstractC0947p.f810a;
            if (obj == null) {
                zEquals = obj2 == null;
            } else {
                zEquals = obj.equals(obj2);
            }
            if (zEquals && cls.equals(cls2)) {
                if (abstractC3616a == null) {
                    zM5765f = abstractC3616a2 == null;
                } else {
                    zM5765f = abstractC3616a.m5765f(abstractC3616a2);
                }
                if (zM5765f && enumC1035h == enumC1035h2 && size == size2) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: l */
    public final void m5794l(InterfaceC1889d0 interfaceC1889d0, Object obj, int i10) {
        InterfaceC3619d interfaceC3619d = this.f10732d;
        if (interfaceC3619d != null) {
            interfaceC3619d.getRoot().mo5778a();
        }
        this.f10728B = 4;
        this.f10745q = interfaceC1889d0;
        if (this.f10734f.f1087i <= 3) {
            Log.d("Glide", "Finished loading " + obj.getClass().getSimpleName() + " from " + AbstractC1178q.m2091y(i10) + " for " + this.f10735g + " with size [" + this.f10752x + "x" + this.f10753y + "] in " + AbstractC0941j.m1076a(this.f10747s) + " ms");
        }
        if (interfaceC3619d != null) {
            interfaceC3619d.mo5780c(this);
        }
        this.f10754z = true;
        try {
            List list = this.f10742n;
            if (list != null) {
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            }
            this.f10743o.getClass();
            this.f10741m.mo1370b(obj);
            this.f10754z = false;
        } catch (Throwable th) {
            this.f10754z = false;
            throw th;
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: m */
    public final void m5795m(int i10, int i11) throws Throwable {
        Object obj;
        C3621f c3621f = this;
        int iRound = i10;
        c3621f.f10730b.m2224a();
        Object obj2 = c3621f.f10731c;
        synchronized (obj2) {
            try {
                try {
                    boolean z9 = f10726C;
                    if (z9) {
                        c3621f.m5791e("Got onSizeReady in " + AbstractC0941j.m1076a(c3621f.f10747s));
                    }
                    if (c3621f.f10728B == 3) {
                        c3621f.f10728B = 2;
                        c3621f.f10737i.getClass();
                        if (iRound != Integer.MIN_VALUE) {
                            iRound = Math.round(iRound * 1.0f);
                        }
                        c3621f.f10752x = iRound;
                        c3621f.f10753y = i11 == Integer.MIN_VALUE ? i11 : Math.round(1.0f * i11);
                        if (z9) {
                            c3621f.m5791e("finished setup for calling load in " + AbstractC0941j.m1076a(c3621f.f10747s));
                        }
                        C1906r c1906r = c3621f.f10748t;
                        C1032e c1032e = c3621f.f10734f;
                        Object obj3 = c3621f.f10735g;
                        AbstractC3616a abstractC3616a = c3621f.f10737i;
                        InterfaceC1643e interfaceC1643e = abstractC3616a.f10711j;
                        try {
                            int i12 = c3621f.f10752x;
                            int i13 = c3621f.f10753y;
                            Class cls = abstractC3616a.f10715n;
                            try {
                                Class cls2 = c3621f.f10736h;
                                EnumC1035h enumC1035h = c3621f.f10740l;
                                C1901m c1901m = abstractC3616a.f10704c;
                                try {
                                    C0934c c0934c = abstractC3616a.f10714m;
                                    boolean z10 = abstractC3616a.f10712k;
                                    boolean z11 = abstractC3616a.f10718q;
                                    try {
                                        C1646h c1646h = abstractC3616a.f10713l;
                                        boolean z12 = abstractC3616a.f10708g;
                                        boolean z13 = abstractC3616a.f10719r;
                                        ExecutorC0937f executorC0937f = c3621f.f10744p;
                                        Object obj4 = obj2;
                                        try {
                                            c3621f.f10746r = c1906r.m2963a(c1032e, obj3, interfaceC1643e, i12, i13, cls, cls2, enumC1035h, c1901m, c0934c, z10, z11, c1646h, z12, z13, c3621f, executorC0937f);
                                            if (c3621f.f10728B != 2) {
                                                c3621f.f10746r = null;
                                            }
                                            if (z9) {
                                                c3621f.m5791e("finished onSizeReady in " + AbstractC0941j.m1076a(c3621f.f10747s));
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            obj = obj4;
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        obj = obj2;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    obj = obj2;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                obj = obj2;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            obj = obj2;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                    obj = obj2;
                }
            } catch (Throwable th7) {
                th = th7;
                obj = c3621f;
            }
        }
    }

    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.f10731c) {
            obj = this.f10735g;
            cls = this.f10736h;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
