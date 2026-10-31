package p196s8;

import p023b8.InterfaceC0930d;
import p032c7.C1008l;
import p171p8.C3003e;
import p171p8.EnumC3004f;
import p242x7.InterfaceC3591h;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: s8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3217a implements InterfaceC3762a, InterfaceC0930d {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3591h f9401b;

    /* JADX INFO: renamed from: c */
    public final C3218b f9402c;

    /* JADX INFO: renamed from: d */
    public boolean f9403d;

    /* JADX INFO: renamed from: e */
    public boolean f9404e;

    /* JADX INFO: renamed from: f */
    public C1008l f9405f;

    /* JADX INFO: renamed from: g */
    public boolean f9406g;

    /* JADX INFO: renamed from: h */
    public volatile boolean f9407h;

    /* JADX INFO: renamed from: i */
    public long f9408i;

    public C3217a(InterfaceC3591h interfaceC3591h, C3218b c3218b) {
        this.f9401b = interfaceC3591h;
        this.f9402c = c3218b;
    }

    /* JADX INFO: renamed from: a */
    public final void m5155a(Object obj, long j10) {
        if (this.f9407h) {
            return;
        }
        if (!this.f9406g) {
            synchronized (this) {
                try {
                    if (this.f9407h) {
                        return;
                    }
                    if (this.f9408i == j10) {
                        return;
                    }
                    if (this.f9404e) {
                        C1008l c1008l = this.f9405f;
                        if (c1008l == null) {
                            c1008l = new C1008l();
                            this.f9405f = c1008l;
                        }
                        int i10 = c1008l.f1008b;
                        if (i10 == 4) {
                            Object[] objArr = new Object[5];
                            ((Object[]) c1008l.f1010d)[4] = objArr;
                            c1008l.f1010d = objArr;
                            i10 = 0;
                        }
                        ((Object[]) c1008l.f1010d)[i10] = obj;
                        c1008l.f1008b = i10 + 1;
                        return;
                    }
                    this.f9403d = true;
                    this.f9406g = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        test(obj);
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        if (this.f9407h) {
            return;
        }
        this.f9407h = true;
        this.f9402c.m5156f(this);
    }

    @Override // p023b8.InterfaceC0930d
    public final boolean test(Object obj) {
        if (this.f9407h) {
            return true;
        }
        InterfaceC3591h interfaceC3591h = this.f9401b;
        if (obj == EnumC3004f.f8447b) {
            interfaceC3591h.mo2818a();
            return true;
        }
        if (obj instanceof C3003e) {
            interfaceC3591h.onError(((C3003e) obj).f8446b);
            return true;
        }
        interfaceC3591h.mo2820e(obj);
        return false;
    }
}
