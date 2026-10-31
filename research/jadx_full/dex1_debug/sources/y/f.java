package y;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import c0.j;
import c0.p;
import com.google.protobuf.q;
import d0.h;
import j.d0;
import j.m;
import j.r;
import j.v;
import j.z;
import j1.i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class f implements c {
    public static final boolean C = Log.isLoggable("GlideRequest", 2);
    public final RuntimeException A;
    public int B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6058a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h f6059b;
    public final Object c;
    public final d d;
    public final Context e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.bumptech.glide.e f6060f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f6061g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Class f6062h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final a f6063i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6064j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f6065k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final com.bumptech.glide.h f6066l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final z.d f6067m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List f6068n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final a0.a f6069o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final c0.f f6070p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public d0 f6071q;
    public a5.h r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public long f6072s;
    public volatile r t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public Drawable f6073u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Drawable f6074v;
    public Drawable w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f6075x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public int f6076y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f6077z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public f(Context context, com.bumptech.glide.e eVar, Object obj, Object obj2, Class cls, a aVar, int i9, int i10, com.bumptech.glide.h hVar, z.d dVar, ArrayList arrayList, d dVar2, r rVar, a0.a aVar2) {
        c0.f fVar = c0.g.f398a;
        this.f6058a = C ? String.valueOf(hashCode()) : null;
        this.f6059b = new h();
        this.c = obj;
        this.e = context;
        this.f6060f = eVar;
        this.f6061g = obj2;
        this.f6062h = cls;
        this.f6063i = aVar;
        this.f6064j = i9;
        this.f6065k = i10;
        this.f6066l = hVar;
        this.f6067m = dVar;
        this.f6068n = arrayList;
        this.d = dVar2;
        this.t = rVar;
        this.f6069o = aVar2;
        this.f6070p = fVar;
        this.B = 1;
        if (this.A == null && ((Map) eVar.f561h.c).containsKey(com.bumptech.glide.d.class)) {
            this.A = new RuntimeException("Glide request origin trace");
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean a() {
        boolean z8;
        synchronized (this.c) {
            z8 = this.B == 4;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void b() {
        if (this.f6077z) {
            i.l("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
            return;
        }
        this.f6059b.a();
        this.f6067m.f(this);
        a5.h hVar = this.r;
        if (hVar != null) {
            synchronized (((r) hVar.e)) {
                ((v) hVar.c).g((f) hVar.d);
            }
            this.r = null;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final Drawable c() {
        if (this.f6074v == null) {
            a aVar = this.f6063i;
            aVar.getClass();
            this.f6074v = null;
            int i9 = aVar.f6043f;
            if (i9 > 0) {
                aVar.getClass();
                Context context = this.e;
                this.f6074v = com.bumptech.glide.c.m(context, context, i9, context.getTheme());
            }
        }
        return this.f6074v;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final void clear() {
        synchronized (this.c) {
            try {
                if (this.f6077z) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f6059b.a();
                if (this.B == 6) {
                    return;
                }
                b();
                d0 d0Var = this.f6071q;
                if (d0Var != null) {
                    this.f6071q = null;
                } else {
                    d0Var = null;
                }
                d dVar = this.d;
                if (dVar == null || dVar.f(this)) {
                    this.f6067m.j(c());
                }
                this.B = 6;
                if (d0Var != null) {
                    this.t.getClass();
                    r.f(d0Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final void d() {
        synchronized (this.c) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void e(String str) {
        StringBuilder sbW = ai.onnxruntime.a.w(str, " this: ");
        sbW.append(this.f6058a);
        Log.v("GlideRequest", sbW.toString());
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void f(z zVar, int i9) {
        Drawable drawableC;
        this.f6059b.a();
        synchronized (this.c) {
            try {
                zVar.getClass();
                int i10 = this.f6060f.f562i;
                if (i10 <= i9) {
                    Log.w("Glide", "Load failed for [" + this.f6061g + "] with dimensions [" + this.f6075x + "x" + this.f6076y + "]", zVar);
                    if (i10 <= 4) {
                        zVar.d();
                    }
                }
                this.r = null;
                this.B = 5;
                d dVar = this.d;
                if (dVar != null) {
                    dVar.b(this);
                }
                boolean z8 = true;
                this.f6077z = true;
                try {
                    List list = this.f6068n;
                    if (list != null) {
                        Iterator it = list.iterator();
                        if (it.hasNext()) {
                            if (it.next() != null) {
                                throw new ClassCastException();
                            }
                            d dVar2 = this.d;
                            if (dVar2 == null) {
                                throw null;
                            }
                            dVar2.getRoot().a();
                            throw null;
                        }
                    }
                    d dVar3 = this.d;
                    if (dVar3 != null && !dVar3.g(this)) {
                        z8 = false;
                    }
                    if (z8) {
                        if (this.f6061g == null) {
                            if (this.w == null) {
                                this.f6063i.getClass();
                                this.w = null;
                            }
                            drawableC = this.w;
                        } else {
                            drawableC = null;
                        }
                        if (drawableC == null) {
                            if (this.f6073u == null) {
                                a aVar = this.f6063i;
                                aVar.getClass();
                                this.f6073u = null;
                                int i11 = aVar.e;
                                if (i11 > 0) {
                                    Context context = this.e;
                                    this.f6063i.getClass();
                                    this.f6073u = com.bumptech.glide.c.m(context, context, i11, context.getTheme());
                                }
                            }
                            drawableC = this.f6073u;
                        }
                        if (drawableC == null) {
                            drawableC = c();
                        }
                        this.f6067m.d(drawableC);
                    }
                    this.f6077z = false;
                } catch (Throwable th) {
                    this.f6077z = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void g(d0 d0Var, int i9) {
        this.f6059b.a();
        d0 d0Var2 = null;
        try {
            synchronized (this.c) {
                try {
                    this.r = null;
                    if (d0Var == null) {
                        f(new z("Expected to receive a Resource<R> with an object of " + this.f6062h + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = d0Var.get();
                    try {
                        if (obj == null || !this.f6062h.isAssignableFrom(obj.getClass())) {
                            this.f6071q = null;
                            StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                            sb.append(this.f6062h);
                            sb.append(" but instead got ");
                            sb.append(obj != null ? obj.getClass() : "");
                            sb.append("{");
                            sb.append(obj);
                            sb.append("} inside Resource{");
                            sb.append(d0Var);
                            sb.append("}.");
                            sb.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                            f(new z(sb.toString()), 5);
                        } else {
                            d dVar = this.d;
                            if (dVar == null || dVar.e(this)) {
                                l(d0Var, obj, i9);
                                return;
                            } else {
                                this.f6071q = null;
                                this.B = 4;
                            }
                        }
                        this.t.getClass();
                        r.f(d0Var);
                    } catch (Throwable th) {
                        d0Var2 = d0Var;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (d0Var2 != null) {
                this.t.getClass();
                r.f(d0Var2);
            }
            throw th3;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean h() {
        boolean z8;
        synchronized (this.c) {
            z8 = this.B == 6;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final void i() {
        synchronized (this.c) {
            try {
                if (this.f6077z) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f6059b.a();
                int i9 = j.f402b;
                this.f6072s = SystemClock.elapsedRealtimeNanos();
                if (this.f6061g == null) {
                    if (p.i(this.f6064j, this.f6065k)) {
                        this.f6075x = this.f6064j;
                        this.f6076y = this.f6065k;
                    }
                    if (this.w == null) {
                        this.f6063i.getClass();
                        this.w = null;
                    }
                    f(new z("Received null model"), this.w == null ? 5 : 3);
                    return;
                }
                int i10 = this.B;
                if (i10 == 2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (i10 == 4) {
                    g(this.f6071q, 5);
                    return;
                }
                List list = this.f6068n;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                    }
                }
                this.B = 3;
                if (p.i(this.f6064j, this.f6065k)) {
                    m(this.f6064j, this.f6065k);
                } else {
                    this.f6067m.a(this);
                }
                int i11 = this.B;
                if (i11 == 2 || i11 == 3) {
                    d dVar = this.d;
                    if (dVar == null || dVar.g(this)) {
                        this.f6067m.g(c());
                    }
                }
                if (C) {
                    e("finished run method in " + j.a(this.f6072s));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean isRunning() {
        boolean z8;
        synchronized (this.c) {
            int i9 = this.B;
            z8 = i9 == 2 || i9 == 3;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean j() {
        boolean z8;
        synchronized (this.c) {
            z8 = this.B == 4;
        }
        return z8;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.c
    public final boolean k(c cVar) {
        int i9;
        int i10;
        Object obj;
        Class cls;
        a aVar;
        com.bumptech.glide.h hVar;
        int size;
        int i11;
        int i12;
        Object obj2;
        Class cls2;
        a aVar2;
        com.bumptech.glide.h hVar2;
        int size2;
        boolean zEquals;
        boolean zF;
        if (!(cVar instanceof f)) {
            return false;
        }
        synchronized (this.c) {
            try {
                i9 = this.f6064j;
                i10 = this.f6065k;
                obj = this.f6061g;
                cls = this.f6062h;
                aVar = this.f6063i;
                hVar = this.f6066l;
                List list = this.f6068n;
                size = list != null ? list.size() : 0;
            } catch (Throwable th) {
                throw th;
            }
        }
        f fVar = (f) cVar;
        synchronized (fVar.c) {
            try {
                i11 = fVar.f6064j;
                i12 = fVar.f6065k;
                obj2 = fVar.f6061g;
                cls2 = fVar.f6062h;
                aVar2 = fVar.f6063i;
                hVar2 = fVar.f6066l;
                List list2 = fVar.f6068n;
                size2 = list2 != null ? list2.size() : 0;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i9 == i11 && i10 == i12) {
            char[] cArr = p.f411a;
            if (obj == null) {
                zEquals = obj2 == null;
            } else {
                zEquals = obj.equals(obj2);
            }
            if (zEquals && cls.equals(cls2)) {
                if (aVar == null) {
                    zF = aVar2 == null;
                } else {
                    zF = aVar.f(aVar2);
                }
                if (zF && hVar == hVar2 && size == size2) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void l(d0 d0Var, Object obj, int i9) {
        d dVar = this.d;
        if (dVar != null) {
            dVar.getRoot().a();
        }
        this.B = 4;
        this.f6071q = d0Var;
        if (this.f6060f.f562i <= 3) {
            Log.d("Glide", "Finished loading " + obj.getClass().getSimpleName() + " from " + q.y(i9) + " for " + this.f6061g + " with size [" + this.f6075x + "x" + this.f6076y + "] in " + j.a(this.f6072s) + " ms");
        }
        if (dVar != null) {
            dVar.c(this);
        }
        this.f6077z = true;
        try {
            List list = this.f6068n;
            if (list != null) {
                Iterator it = list.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            }
            this.f6069o.getClass();
            this.f6067m.b(obj);
            this.f6077z = false;
        } catch (Throwable th) {
            this.f6077z = false;
            throw th;
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
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
    public final void m(int i9, int i10) throws Throwable {
        Object obj;
        f fVar = this;
        int iRound = i9;
        fVar.f6059b.a();
        Object obj2 = fVar.c;
        synchronized (obj2) {
            try {
                try {
                    boolean z8 = C;
                    if (z8) {
                        fVar.e("Got onSizeReady in " + j.a(fVar.f6072s));
                    }
                    if (fVar.B == 3) {
                        fVar.B = 2;
                        fVar.f6063i.getClass();
                        if (iRound != Integer.MIN_VALUE) {
                            iRound = Math.round(iRound * 1.0f);
                        }
                        fVar.f6075x = iRound;
                        fVar.f6076y = i10 == Integer.MIN_VALUE ? i10 : Math.round(1.0f * i10);
                        if (z8) {
                            fVar.e("finished setup for calling load in " + j.a(fVar.f6072s));
                        }
                        r rVar = fVar.t;
                        com.bumptech.glide.e eVar = fVar.f6060f;
                        Object obj3 = fVar.f6061g;
                        a aVar = fVar.f6063i;
                        h.e eVar2 = aVar.f6047j;
                        try {
                            int i11 = fVar.f6075x;
                            int i12 = fVar.f6076y;
                            Class cls = aVar.f6051n;
                            try {
                                Class cls2 = fVar.f6062h;
                                com.bumptech.glide.h hVar = fVar.f6066l;
                                m mVar = aVar.c;
                                try {
                                    c0.c cVar = aVar.f6050m;
                                    boolean z9 = aVar.f6048k;
                                    boolean z10 = aVar.f6054q;
                                    try {
                                        h.h hVar2 = aVar.f6049l;
                                        boolean z11 = aVar.f6044g;
                                        boolean z12 = aVar.r;
                                        c0.f fVar2 = fVar.f6070p;
                                        Object obj4 = obj2;
                                        try {
                                            fVar.r = rVar.a(eVar, obj3, eVar2, i11, i12, cls, cls2, hVar, mVar, cVar, z9, z10, hVar2, z11, z12, fVar, fVar2);
                                            if (fVar.B != 2) {
                                                fVar.r = null;
                                            }
                                            if (z8) {
                                                fVar.e("finished onSizeReady in " + j.a(fVar.f6072s));
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
                    obj = fVar;
                }
            } catch (Throwable th7) {
                th = th7;
                obj = obj2;
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.c) {
            obj = this.f6061g;
            cls = this.f6062h;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
