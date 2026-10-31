package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import androidx.collection.ArrayMap;
import androidx.navigation.C0674b;
import com.bumptech.glide.manager.C1074t;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p025c0.AbstractC0938g;
import p025c0.AbstractC0947p;
import p099j1.C1929i;
import p142n0.C2467b;
import p172q.C3019i;
import p172q.C3020j;
import p172q.C3025o;
import p172q.C3032v;
import p244y.AbstractC3616a;
import p244y.C3617b;
import p244y.C3620e;
import p244y.C3621f;
import p244y.C3622g;
import p244y.InterfaceC3618c;
import p244y.InterfaceC3619d;
import p254z.C3687a;
import p254z.InterfaceC3690d;

/* JADX INFO: renamed from: com.bumptech.glide.l */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1039l extends AbstractC3616a {

    /* JADX INFO: renamed from: A */
    public C1039l f1108A;

    /* JADX INFO: renamed from: B */
    public final boolean f1109B = true;

    /* JADX INFO: renamed from: C */
    public boolean f1110C;

    /* JADX INFO: renamed from: D */
    public boolean f1111D;

    /* JADX INFO: renamed from: s */
    public final Context f1112s;

    /* JADX INFO: renamed from: t */
    public final ComponentCallbacks2C1078p f1113t;

    /* JADX INFO: renamed from: u */
    public final Class f1114u;

    /* JADX INFO: renamed from: v */
    public final C1032e f1115v;

    /* JADX INFO: renamed from: w */
    public C1028a f1116w;

    /* JADX INFO: renamed from: x */
    public Object f1117x;

    /* JADX INFO: renamed from: y */
    public ArrayList f1118y;

    /* JADX INFO: renamed from: z */
    public C1039l f1119z;

    static {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C1039l(ComponentCallbacks2C1029b componentCallbacks2C1029b, ComponentCallbacks2C1078p componentCallbacks2C1078p, Class cls, Context context) {
        C3620e c3620e;
        this.f1113t = componentCallbacks2C1078p;
        this.f1114u = cls;
        this.f1112s = context;
        ArrayMap arrayMap = componentCallbacks2C1078p.f1192b.f1069d.f1084f;
        C1028a c1028a = (C1028a) arrayMap.get(cls);
        if (c1028a == null) {
            Iterator it = arrayMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    c1028a = (C1028a) entry.getValue();
                }
            }
        }
        this.f1116w = c1028a == null ? C1032e.f1078k : c1028a;
        this.f1115v = componentCallbacks2C1029b.f1069d;
        Iterator it2 = componentCallbacks2C1078p.f1200j.iterator();
        while (it2.hasNext()) {
            if (it2.next() != null) {
                C2467b.m3822a();
                throw null;
            }
            m1309t();
        }
        synchronized (componentCallbacks2C1078p) {
            c3620e = componentCallbacks2C1078p.f1201k;
        }
        mo1307a(c3620e);
    }

    @Override // p244y.AbstractC3616a
    public final boolean equals(Object obj) {
        if (!(obj instanceof C1039l)) {
            return false;
        }
        C1039l c1039l = (C1039l) obj;
        return super.equals(c1039l) && Objects.equals(this.f1114u, c1039l.f1114u) && this.f1116w.equals(c1039l.f1116w) && Objects.equals(this.f1117x, c1039l.f1117x) && Objects.equals(this.f1118y, c1039l.f1118y) && Objects.equals(this.f1119z, c1039l.f1119z) && Objects.equals(this.f1108A, c1039l.f1108A) && this.f1109B == c1039l.f1109B && this.f1110C == c1039l.f1110C;
    }

    @Override // p244y.AbstractC3616a
    public final int hashCode() {
        return AbstractC0947p.m1090g(this.f1110C ? 1 : 0, AbstractC0947p.m1090g(this.f1109B ? 1 : 0, AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(AbstractC0947p.m1091h(super.hashCode(), this.f1114u), this.f1116w), this.f1117x), this.f1118y), this.f1119z), this.f1108A), null)));
    }

    /* JADX INFO: renamed from: t */
    public final C1039l m1309t() {
        if (this.f10717p) {
            return clone().m1309t();
        }
        m5770l();
        return this;
    }

    @Override // p244y.AbstractC3616a
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public final C1039l mo1307a(AbstractC3616a abstractC3616a) {
        AbstractC0938g.m1071b(abstractC3616a);
        return (C1039l) super.mo1307a(abstractC3616a);
    }

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
    /* JADX INFO: renamed from: v */
    public final InterfaceC3618c m1311v(Object obj, InterfaceC3690d interfaceC3690d, InterfaceC3619d interfaceC3619d, C1028a c1028a, EnumC1035h enumC1035h, int i10, int i11, AbstractC3616a abstractC3616a) {
        InterfaceC3619d interfaceC3619d2;
        InterfaceC3619d c3617b;
        AbstractC3616a abstractC3616a2;
        InterfaceC3618c c3621f;
        EnumC1035h enumC1035h2;
        if (this.f1108A != null) {
            c3617b = new C3617b(obj, interfaceC3619d);
            interfaceC3619d2 = c3617b;
        } else {
            interfaceC3619d2 = null;
            c3617b = interfaceC3619d;
        }
        C1039l c1039l = this.f1119z;
        if (c1039l == null) {
            Context context = this.f1112s;
            C1032e c1032e = this.f1115v;
            abstractC3616a2 = abstractC3616a;
            c3621f = new C3621f(context, c1032e, obj, this.f1117x, this.f1114u, abstractC3616a2, i10, i11, enumC1035h, interfaceC3690d, this.f1118y, c3617b, c1032e.f1085g, c1028a.f1064b);
        } else {
            if (this.f1111D) {
                C1929i.m3030l("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
                return null;
            }
            C1028a c1028a2 = c1039l.f1109B ? c1028a : c1039l.f1116w;
            if (AbstractC3616a.m5761g(c1039l.f10703b, 8)) {
                enumC1035h2 = this.f1119z.f10705d;
            } else {
                int iOrdinal = enumC1035h.ordinal();
                if (iOrdinal == 0 || iOrdinal == 1) {
                    enumC1035h2 = EnumC1035h.f1091b;
                } else if (iOrdinal == 2) {
                    enumC1035h2 = EnumC1035h.f1092c;
                } else {
                    if (iOrdinal != 3) {
                        C0674b.m848o(this.f10705d, "unknown priority: ");
                        return null;
                    }
                    enumC1035h2 = EnumC1035h.f1093d;
                }
            }
            EnumC1035h enumC1035h3 = enumC1035h2;
            C1039l c1039l2 = this.f1119z;
            int i12 = c1039l2.f10710i;
            int i13 = c1039l2.f10709h;
            if (AbstractC0947p.m1092i(i10, i11)) {
                C1039l c1039l3 = this.f1119z;
                if (!AbstractC0947p.m1092i(c1039l3.f10710i, c1039l3.f10709h)) {
                    i12 = abstractC3616a.f10710i;
                    i13 = abstractC3616a.f10709h;
                }
            }
            int i14 = i13;
            C3622g c3622g = new C3622g(obj, c3617b);
            Context context2 = this.f1112s;
            C3622g c3622g2 = c3622g;
            C1032e c1032e2 = this.f1115v;
            C3621f c3621f2 = new C3621f(context2, c1032e2, obj, this.f1117x, this.f1114u, abstractC3616a, i10, i11, enumC1035h, interfaceC3690d, this.f1118y, c3622g2, c1032e2.f1085g, c1028a.f1064b);
            this.f1111D = true;
            C1039l c1039l4 = this.f1119z;
            InterfaceC3618c interfaceC3618cM1311v = c1039l4.m1311v(obj, interfaceC3690d, c3622g2, c1028a2, enumC1035h3, i12, i14, c1039l4);
            this.f1111D = false;
            c3622g2.f10757c = c3621f2;
            c3622g2.f10758d = interfaceC3618cM1311v;
            abstractC3616a2 = abstractC3616a;
            c3621f = c3622g2;
        }
        if (interfaceC3619d2 == null) {
            return c3621f;
        }
        C1039l c1039l5 = this.f1108A;
        int i15 = c1039l5.f10710i;
        int i16 = c1039l5.f10709h;
        if (AbstractC0947p.m1092i(i10, i11)) {
            C1039l c1039l6 = this.f1108A;
            if (!AbstractC0947p.m1092i(c1039l6.f10710i, c1039l6.f10709h)) {
                i15 = abstractC3616a2.f10710i;
                i16 = abstractC3616a2.f10709h;
            }
        }
        int i17 = i16;
        C1039l c1039l7 = this.f1108A;
        C3617b c3617b2 = interfaceC3619d2;
        InterfaceC3618c interfaceC3618cM1311v2 = c1039l7.m1311v(obj, interfaceC3690d, c3617b2, c1039l7.f1116w, c1039l7.f10705d, i15, i17, c1039l7);
        c3617b2.f10722c = c3621f;
        c3617b2.f10723d = interfaceC3618cM1311v2;
        return c3617b2;
    }

    @Override // p244y.AbstractC3616a
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final C1039l clone() {
        C1039l c1039l = (C1039l) super.clone();
        c1039l.f1116w = c1039l.f1116w.clone();
        if (c1039l.f1118y != null) {
            c1039l.f1118y = new ArrayList(c1039l.f1118y);
        }
        C1039l c1039l2 = c1039l.f1119z;
        if (c1039l2 != null) {
            c1039l.f1119z = c1039l2.clone();
        }
        C1039l c1039l3 = c1039l.f1108A;
        if (c1039l3 != null) {
            c1039l.f1108A = c1039l3.clone();
        }
        return c1039l;
    }

    /* JADX INFO: renamed from: x */
    public final void m1313x(ImageView imageView) {
        AbstractC3616a abstractC3616aM5766h;
        InterfaceC3690d c3687a;
        AbstractC0947p.m1084a();
        AbstractC0938g.m1071b(imageView);
        if (!AbstractC3616a.m5761g(this.f10703b, 2048) && imageView.getScaleType() != null) {
            switch (AbstractC1038k.f1106a[imageView.getScaleType().ordinal()]) {
                case 1:
                    abstractC3616aM5766h = clone().m5766h(C3025o.f8483d, new C3019i());
                    break;
                case 2:
                    abstractC3616aM5766h = clone().m5766h(C3025o.f8482c, new C3020j());
                    abstractC3616aM5766h.f10718q = true;
                    break;
                case 3:
                case 4:
                case 5:
                    abstractC3616aM5766h = clone().m5766h(C3025o.f8481b, new C3032v());
                    abstractC3616aM5766h.f10718q = true;
                    break;
                case 6:
                    abstractC3616aM5766h = clone().m5766h(C3025o.f8482c, new C3020j());
                    abstractC3616aM5766h.f10718q = true;
                    break;
                default:
                    abstractC3616aM5766h = this;
                    break;
            }
        } else {
            abstractC3616aM5766h = this;
        }
        this.f1115v.f1081c.getClass();
        Class cls = this.f1114u;
        if (Bitmap.class.equals(cls)) {
            c3687a = new C3687a(imageView, 0);
        } else {
            if (!Drawable.class.isAssignableFrom(cls)) {
                C0674b.m849p(cls, "Unhandled class: ", ", try .as*(Class).transcode(ResourceTranscoder)");
                return;
            }
            c3687a = new C3687a(imageView, 1);
        }
        m1314y(c3687a, abstractC3616aM5766h);
    }

    /* JADX INFO: renamed from: y */
    public final void m1314y(InterfaceC3690d interfaceC3690d, AbstractC3616a abstractC3616a) {
        AbstractC0938g.m1071b(interfaceC3690d);
        if (!this.f1110C) {
            C1929i.m3029k("You must call #load() before calling #into()");
            return;
        }
        InterfaceC3618c interfaceC3618cM1311v = m1311v(new Object(), interfaceC3690d, null, this.f1116w, abstractC3616a.f10705d, abstractC3616a.f10710i, abstractC3616a.f10709h, abstractC3616a);
        InterfaceC3618c interfaceC3618cMo1375i = interfaceC3690d.mo1375i();
        if (interfaceC3618cM1311v.mo5788k(interfaceC3618cMo1375i) && (abstractC3616a.f10708g || !interfaceC3618cMo1375i.mo5787j())) {
            AbstractC0938g.m1072c(interfaceC3618cMo1375i, "Argument must not be null");
            if (interfaceC3618cMo1375i.isRunning()) {
                return;
            }
            interfaceC3618cMo1375i.mo5786i();
            return;
        }
        this.f1113t.m1377k(interfaceC3690d);
        interfaceC3690d.mo1374h(interfaceC3618cM1311v);
        ComponentCallbacks2C1078p componentCallbacks2C1078p = this.f1113t;
        synchronized (componentCallbacks2C1078p) {
            componentCallbacks2C1078p.f1197g.f1186b.add(interfaceC3690d);
            C1074t c1074t = componentCallbacks2C1078p.f1195e;
            ((Set) c1074t.f1184d).add(interfaceC3618cM1311v);
            if (c1074t.f1183c) {
                interfaceC3618cM1311v.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                    Log.v("RequestTracker", "Paused, delaying request");
                }
                ((HashSet) c1074t.f1185e).add(interfaceC3618cM1311v);
            } else {
                interfaceC3618cM1311v.mo5786i();
            }
        }
    }

    /* JADX INFO: renamed from: z */
    public final C1039l m1315z(Object obj) {
        if (this.f10717p) {
            return clone().m1315z(obj);
        }
        this.f1117x = obj;
        this.f1110C = true;
        m5770l();
        return this;
    }
}
