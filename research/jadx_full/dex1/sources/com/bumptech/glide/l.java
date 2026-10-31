package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import androidx.collection.ArrayMap;
import com.bumptech.glide.manager.t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map$Entry;
import java.util.Objects;
import java.util.Set;
import q.v;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes.dex */
public final class l extends y.a {
    public l A;
    public final boolean B = true;
    public boolean C;
    public boolean D;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final Context f577s;
    public final p t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Class f578u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final e f579v;
    public a w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public Object f580x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public ArrayList f581y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public l f582z;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r0v1, resolved type: V */
    /* JADX WARN: Multi-variable type inference failed */
    public l(b bVar, p pVar, Class cls, Context context) {
        y.e eVar;
        this.t = pVar;
        this.f578u = cls;
        this.f577s = context;
        ArrayMap arrayMap = pVar.f621b.d.f559f;
        a aVar = (a) arrayMap.get(cls);
        if (aVar == null) {
            Iterator it = arrayMap.entrySet().iterator();
            while (it.hasNext()) {
                Map$Entry map$Entry = (Map$Entry) it.next();
                if (((Class) map$Entry.getKey()).isAssignableFrom(cls)) {
                    aVar = (a) map$Entry.getValue();
                }
            }
        }
        this.w = aVar == null ? e.f556k : aVar;
        this.f579v = bVar.d;
        Iterator it2 = pVar.f626j.iterator();
        while (it2.hasNext()) {
            if (it2.next() != null) {
                n0.b.a();
                throw null;
            }
            t();
        }
        synchronized (pVar) {
            eVar = pVar.f627k;
        }
        u(eVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.a
    public final /* bridge */ /* synthetic */ y.a a(y.a aVar) {
        return u(aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.a
    public final /* bridge */ /* synthetic */ y.a b() {
        return w();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.a
    public final /* bridge */ /* synthetic */ Object clone() {
        return w();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.a
    public final boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return super.equals(lVar) && Objects.equals(this.f578u, lVar.f578u) && this.w.equals(lVar.w) && Objects.equals(this.f580x, lVar.f580x) && Objects.equals(this.f581y, lVar.f581y) && Objects.equals(this.f582z, lVar.f582z) && Objects.equals(this.A, lVar.A) && this.B == lVar.B && this.C == lVar.C;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // y.a
    public final int hashCode() {
        return c0.p.g(this.C ? 1 : 0, c0.p.g(this.B ? 1 : 0, c0.p.h(c0.p.h(c0.p.h(c0.p.h(c0.p.h(c0.p.h(c0.p.h(super.hashCode(), this.f578u), this.w), this.f580x), this.f581y), this.f582z), this.A), null)));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l t() {
        if (this.f6053p) {
            return w().t();
        }
        l();
        return this;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l u(y.a aVar) {
        c0.g.b(aVar);
        return (l) super.a(aVar);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Multi-variable search result rejected for r4v2, resolved type: y.b */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final y.c v(Object obj, z.d dVar, y.d dVar2, a aVar, h hVar, int i9, int i10, y.a aVar2) {
        y.d dVar3;
        y.d bVar;
        y.a aVar3;
        y.c fVar;
        h hVar2;
        if (this.A != null) {
            bVar = new y.b(obj, dVar2);
            dVar3 = bVar;
        } else {
            dVar3 = null;
            bVar = dVar2;
        }
        l lVar = this.f582z;
        if (lVar == null) {
            Context context = this.f577s;
            e eVar = this.f579v;
            aVar3 = aVar2;
            fVar = new y.f(context, eVar, obj, this.f580x, this.f578u, aVar3, i9, i10, hVar, dVar, this.f581y, bVar, eVar.f560g, aVar.f546b);
        } else {
            if (this.D) {
                j1.i.l("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
                return null;
            }
            a aVar4 = lVar.B ? aVar : lVar.w;
            if (y.a.g(lVar.f6042b, 8)) {
                hVar2 = this.f582z.d;
            } else {
                int iOrdinal = hVar.ordinal();
                if (iOrdinal == 0 || iOrdinal == 1) {
                    hVar2 = h.f566b;
                } else if (iOrdinal == 2) {
                    hVar2 = h.c;
                } else {
                    if (iOrdinal != 3) {
                        androidx.navigation.b.o(this.d, "unknown priority: ");
                        return null;
                    }
                    hVar2 = h.d;
                }
            }
            h hVar3 = hVar2;
            l lVar2 = this.f582z;
            int i11 = lVar2.f6046i;
            int i12 = lVar2.f6045h;
            if (c0.p.i(i9, i10)) {
                l lVar3 = this.f582z;
                if (!c0.p.i(lVar3.f6046i, lVar3.f6045h)) {
                    i11 = aVar2.f6046i;
                    i12 = aVar2.f6045h;
                }
            }
            int i13 = i12;
            y.g gVar = new y.g(obj, bVar);
            Context context2 = this.f577s;
            y.g gVar2 = gVar;
            e eVar2 = this.f579v;
            y.f fVar2 = new y.f(context2, eVar2, obj, this.f580x, this.f578u, aVar2, i9, i10, hVar, dVar, this.f581y, gVar2, eVar2.f560g, aVar.f546b);
            this.D = true;
            l lVar4 = this.f582z;
            y.c cVarV = lVar4.v(obj, dVar, gVar2, aVar4, hVar3, i11, i13, lVar4);
            this.D = false;
            gVar2.c = fVar2;
            gVar2.d = cVarV;
            aVar3 = aVar2;
            fVar = gVar2;
        }
        if (dVar3 == null) {
            return fVar;
        }
        l lVar5 = this.A;
        int i14 = lVar5.f6046i;
        int i15 = lVar5.f6045h;
        if (c0.p.i(i9, i10)) {
            l lVar6 = this.A;
            if (!c0.p.i(lVar6.f6046i, lVar6.f6045h)) {
                i14 = aVar3.f6046i;
                i15 = aVar3.f6045h;
            }
        }
        int i16 = i15;
        l lVar7 = this.A;
        y.b bVar2 = dVar3;
        y.c cVarV2 = lVar7.v(obj, dVar, bVar2, lVar7.w, lVar7.d, i14, i16, lVar7);
        bVar2.c = fVar;
        bVar2.d = cVarV2;
        return bVar2;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l w() {
        l lVar = (l) super.b();
        lVar.w = lVar.w.a();
        if (lVar.f581y != null) {
            lVar.f581y = new ArrayList(lVar.f581y);
        }
        l lVar2 = lVar.f582z;
        if (lVar2 != null) {
            lVar.f582z = lVar2.w();
        }
        l lVar3 = lVar.A;
        if (lVar3 != null) {
            lVar.A = lVar3.w();
        }
        return lVar;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:24:? */
    public final void x(ImageView imageView) {
        y.a aVarH;
        z.d aVar;
        c0.p.a();
        c0.g.b(imageView);
        if (!y.a.g(this.f6042b, 2048) && imageView.getScaleType() != null) {
            switch (k.f575a[imageView.getScaleType().ordinal()]) {
                case 1:
                    aVarH = w().h(q.o.d, new q.i());
                    break;
                case 2:
                    aVarH = w().h(q.o.c, new q.j());
                    aVarH.f6054q = true;
                    break;
                case 3:
                case 4:
                case 5:
                    aVarH = w().h(q.o.f4727b, new v());
                    aVarH.f6054q = true;
                    break;
                case 6:
                    aVarH = w().h(q.o.c, new q.j());
                    aVarH.f6054q = true;
                    break;
                default:
                    aVarH = this;
                    break;
            }
        } else {
            aVarH = this;
        }
        this.f579v.c.getClass();
        Class cls = this.f578u;
        if (Bitmap.class.equals(cls)) {
            aVar = new z.a(imageView, 0);
        } else {
            if (!Drawable.class.isAssignableFrom(cls)) {
                androidx.navigation.b.p(cls, "Unhandled class: ", ", try .as*(Class).transcode(ResourceTranscoder)");
                return;
            }
            aVar = new z.a(imageView, 1);
        }
        y(aVar, aVarH);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final void y(z.d dVar, y.a aVar) {
        c0.g.b(dVar);
        if (!this.C) {
            j1.i.k("You must call #load() before calling #into()");
            return;
        }
        y.c cVarV = v(new Object(), dVar, null, this.w, aVar.d, aVar.f6046i, aVar.f6045h, aVar);
        y.c cVarI = dVar.i();
        if (cVarV.k(cVarI) && (aVar.f6044g || !cVarI.j())) {
            c0.g.c(cVarI, "Argument must not be null");
            if (cVarI.isRunning()) {
                return;
            }
            cVarI.i();
            return;
        }
        this.t.k(dVar);
        dVar.h(cVarV);
        p pVar = this.t;
        synchronized (pVar) {
            pVar.f623g.f616b.add(dVar);
            t tVar = pVar.e;
            ((Set) tVar.d).add(cVarV);
            if (tVar.c) {
                cVarV.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                    Log.v("RequestTracker", "Paused, delaying request");
                }
                ((HashSet) tVar.e).add(cVarV);
            } else {
                cVarV.i();
            }
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public final l z(Object obj) {
        if (this.f6053p) {
            return w().z(obj);
        }
        this.f580x = obj;
        this.C = true;
        l();
        return this;
    }
}
