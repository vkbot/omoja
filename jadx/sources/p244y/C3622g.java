package p244y;

import kotlin.collections.unsigned.AbstractC2082a;

/* JADX INFO: renamed from: y.g */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3622g implements InterfaceC3619d, InterfaceC3618c {

    /* JADX INFO: renamed from: a */
    public final InterfaceC3619d f10755a;

    /* JADX INFO: renamed from: b */
    public final Object f10756b;

    /* JADX INFO: renamed from: c */
    public volatile C3621f f10757c;

    /* JADX INFO: renamed from: d */
    public volatile InterfaceC3618c f10758d;

    /* JADX INFO: renamed from: e */
    public int f10759e = 3;

    /* JADX INFO: renamed from: f */
    public int f10760f = 3;

    /* JADX INFO: renamed from: g */
    public boolean f10761g;

    public C3622g(Object obj, InterfaceC3619d interfaceC3619d) {
        this.f10756b = obj;
        this.f10755a = interfaceC3619d;
    }

    @Override // p244y.InterfaceC3619d, p244y.InterfaceC3618c
    /* JADX INFO: renamed from: a */
    public final boolean mo5778a() {
        boolean z9;
        synchronized (this.f10756b) {
            try {
                z9 = this.f10758d.mo5778a() || this.f10757c.mo5778a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3619d
    /* JADX INFO: renamed from: b */
    public final void mo5779b(InterfaceC3618c interfaceC3618c) {
        synchronized (this.f10756b) {
            try {
                if (!interfaceC3618c.equals(this.f10757c)) {
                    this.f10760f = 5;
                    return;
                }
                this.f10759e = 5;
                InterfaceC3619d interfaceC3619d = this.f10755a;
                if (interfaceC3619d != null) {
                    interfaceC3619d.mo5779b(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p244y.InterfaceC3619d
    /* JADX INFO: renamed from: c */
    public final void mo5780c(InterfaceC3618c interfaceC3618c) {
        synchronized (this.f10756b) {
            try {
                if (interfaceC3618c.equals(this.f10758d)) {
                    this.f10760f = 4;
                    return;
                }
                this.f10759e = 4;
                InterfaceC3619d interfaceC3619d = this.f10755a;
                if (interfaceC3619d != null) {
                    interfaceC3619d.mo5780c(this);
                }
                if (!AbstractC2082a.m3235a(this.f10760f)) {
                    this.f10758d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p244y.InterfaceC3618c
    public final void clear() {
        synchronized (this.f10756b) {
            this.f10761g = false;
            this.f10759e = 3;
            this.f10760f = 3;
            this.f10758d.clear();
            this.f10757c.clear();
        }
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: d */
    public final void mo5781d() {
        synchronized (this.f10756b) {
            try {
                if (!AbstractC2082a.m3235a(this.f10760f)) {
                    this.f10760f = 2;
                    this.f10758d.mo5781d();
                }
                if (!AbstractC2082a.m3235a(this.f10759e)) {
                    this.f10759e = 2;
                    this.f10757c.mo5781d();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p244y.InterfaceC3619d
    /* JADX INFO: renamed from: e */
    public final boolean mo5782e(InterfaceC3618c interfaceC3618c) {
        boolean z9;
        synchronized (this.f10756b) {
            try {
                InterfaceC3619d interfaceC3619d = this.f10755a;
                z9 = (interfaceC3619d == null || interfaceC3619d.mo5782e(this)) && (interfaceC3618c.equals(this.f10757c) || this.f10759e != 4);
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3619d
    /* JADX INFO: renamed from: f */
    public final boolean mo5783f(InterfaceC3618c interfaceC3618c) {
        boolean z9;
        synchronized (this.f10756b) {
            try {
                InterfaceC3619d interfaceC3619d = this.f10755a;
                z9 = (interfaceC3619d == null || interfaceC3619d.mo5783f(this)) && interfaceC3618c.equals(this.f10757c) && this.f10759e != 2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3619d
    /* JADX INFO: renamed from: g */
    public final boolean mo5784g(InterfaceC3618c interfaceC3618c) {
        boolean z9;
        synchronized (this.f10756b) {
            try {
                InterfaceC3619d interfaceC3619d = this.f10755a;
                z9 = (interfaceC3619d == null || interfaceC3619d.mo5784g(this)) && interfaceC3618c.equals(this.f10757c) && !mo5778a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3619d
    public final InterfaceC3619d getRoot() {
        InterfaceC3619d root;
        synchronized (this.f10756b) {
            try {
                InterfaceC3619d interfaceC3619d = this.f10755a;
                root = interfaceC3619d != null ? interfaceC3619d.getRoot() : this;
            } catch (Throwable th) {
                throw th;
            }
        }
        return root;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: h */
    public final boolean mo5785h() {
        boolean z9;
        synchronized (this.f10756b) {
            z9 = this.f10759e == 3;
        }
        return z9;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: i */
    public final void mo5786i() {
        synchronized (this.f10756b) {
            try {
                this.f10761g = true;
                try {
                    if (this.f10759e != 4 && this.f10760f != 1) {
                        this.f10760f = 1;
                        this.f10758d.mo5786i();
                    }
                    if (this.f10761g && this.f10759e != 1) {
                        this.f10759e = 1;
                        this.f10757c.mo5786i();
                    }
                    this.f10761g = false;
                } catch (Throwable th) {
                    this.f10761g = false;
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // p244y.InterfaceC3618c
    public final boolean isRunning() {
        boolean z9;
        synchronized (this.f10756b) {
            z9 = true;
            if (this.f10759e != 1) {
                z9 = false;
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: j */
    public final boolean mo5787j() {
        boolean z9;
        synchronized (this.f10756b) {
            z9 = this.f10759e == 4;
        }
        return z9;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: k */
    public final boolean mo5788k(InterfaceC3618c interfaceC3618c) {
        if (!(interfaceC3618c instanceof C3622g)) {
            return false;
        }
        C3622g c3622g = (C3622g) interfaceC3618c;
        if (this.f10757c == null) {
            if (c3622g.f10757c != null) {
                return false;
            }
        } else if (!this.f10757c.mo5788k(c3622g.f10757c)) {
            return false;
        }
        if (this.f10758d == null) {
            return c3622g.f10758d == null;
        }
        return this.f10758d.mo5788k(c3622g.f10758d);
    }
}
