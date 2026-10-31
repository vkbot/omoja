package com.google.protobuf;

import p099j1.C1929i;

/* JADX INFO: renamed from: com.google.protobuf.w */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1196w implements Cloneable {

    /* JADX INFO: renamed from: b */
    public final AbstractC1202y f2789b;

    /* JADX INFO: renamed from: c */
    public AbstractC1202y f2790c;

    public AbstractC1196w(AbstractC1202y abstractC1202y) {
        this.f2789b = abstractC1202y;
        if (abstractC1202y.m2175i()) {
            C1929i.m3029k("Default instance must be immutable.");
            throw null;
        }
        this.f2790c = abstractC1202y.m2177k();
    }

    /* JADX INFO: renamed from: d */
    public static void m2164d(Object obj, Object obj2) {
        C1203y0 c1203y0 = C1203y0.f2795c;
        c1203y0.getClass();
        c1203y0.m2179a(obj.getClass()).mo1902b(obj, obj2);
    }

    /* JADX INFO: renamed from: a */
    public final AbstractC1202y m2165a() {
        AbstractC1202y abstractC1202yM2166b = m2166b();
        abstractC1202yM2166b.getClass();
        if (AbstractC1202y.m2171h(abstractC1202yM2166b, true)) {
            return abstractC1202yM2166b;
        }
        throw new C1156i1();
    }

    /* JADX INFO: renamed from: b */
    public final AbstractC1202y m2166b() {
        boolean zM2175i = this.f2790c.m2175i();
        AbstractC1202y abstractC1202y = this.f2790c;
        if (!zM2175i) {
            return abstractC1202y;
        }
        abstractC1202y.getClass();
        C1203y0 c1203y0 = C1203y0.f2795c;
        c1203y0.getClass();
        c1203y0.m2179a(abstractC1202y.getClass()).mo1903c(abstractC1202y);
        abstractC1202y.m2176j();
        return this.f2790c;
    }

    /* JADX INFO: renamed from: c */
    public final void m2167c() {
        if (this.f2790c.m2175i()) {
            return;
        }
        AbstractC1202y abstractC1202yM2177k = this.f2789b.m2177k();
        m2164d(abstractC1202yM2177k, this.f2790c);
        this.f2790c = abstractC1202yM2177k;
    }

    public final Object clone() {
        AbstractC1196w abstractC1196w = (AbstractC1196w) this.f2789b.mo2174e(5);
        abstractC1196w.f2790c = m2166b();
        return abstractC1196w;
    }
}
