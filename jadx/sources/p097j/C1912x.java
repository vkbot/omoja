package p097j;

import p025c0.AbstractC0938g;
import p077h.InterfaceC1643e;

/* JADX INFO: renamed from: j.x */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1912x implements InterfaceC1889d0 {

    /* JADX INFO: renamed from: b */
    public final boolean f5031b;

    /* JADX INFO: renamed from: c */
    public final boolean f5032c;

    /* JADX INFO: renamed from: d */
    public final InterfaceC1889d0 f5033d;

    /* JADX INFO: renamed from: e */
    public final C1906r f5034e;

    /* JADX INFO: renamed from: f */
    public final InterfaceC1643e f5035f;

    /* JADX INFO: renamed from: g */
    public int f5036g;

    /* JADX INFO: renamed from: h */
    public boolean f5037h;

    public C1912x(InterfaceC1889d0 interfaceC1889d0, boolean z9, boolean z10, InterfaceC1643e interfaceC1643e, C1906r c1906r) {
        AbstractC0938g.m1072c(interfaceC1889d0, "Argument must not be null");
        this.f5033d = interfaceC1889d0;
        this.f5031b = z9;
        this.f5032c = z10;
        this.f5035f = interfaceC1643e;
        AbstractC0938g.m1072c(c1906r, "Argument must not be null");
        this.f5034e = c1906r;
    }

    /* JADX INFO: renamed from: a */
    public final synchronized void m2974a() {
        if (this.f5037h) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        this.f5036g++;
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: b */
    public final int mo2932b() {
        return this.f5033d.mo2932b();
    }

    /* JADX INFO: renamed from: c */
    public final void m2975c() {
        boolean z9;
        synchronized (this) {
            int i10 = this.f5036g;
            if (i10 <= 0) {
                throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
            }
            z9 = true;
            int i11 = i10 - 1;
            this.f5036g = i11;
            if (i11 != 0) {
                z9 = false;
            }
        }
        if (z9) {
            this.f5034e.m2966e(this.f5035f, this);
        }
    }

    @Override // p097j.InterfaceC1889d0
    /* JADX INFO: renamed from: d */
    public final Class mo2933d() {
        return this.f5033d.mo2933d();
    }

    @Override // p097j.InterfaceC1889d0
    public final Object get() {
        return this.f5033d.get();
    }

    @Override // p097j.InterfaceC1889d0
    public final synchronized void recycle() {
        if (this.f5036g > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f5037h) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f5037h = true;
        if (this.f5032c) {
            this.f5033d.recycle();
        }
    }

    public final synchronized String toString() {
        return "EngineResource{isMemoryCacheable=" + this.f5031b + ", listener=" + this.f5034e + ", key=" + this.f5035f + ", acquired=" + this.f5036g + ", isRecycled=" + this.f5037h + ", resource=" + this.f5033d + '}';
    }
}
