package p244y;

/* JADX INFO: renamed from: y.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C3617b implements InterfaceC3619d, InterfaceC3618c {

    /* JADX INFO: renamed from: a */
    public final Object f10720a;

    /* JADX INFO: renamed from: b */
    public final InterfaceC3619d f10721b;

    /* JADX INFO: renamed from: c */
    public volatile InterfaceC3618c f10722c;

    /* JADX INFO: renamed from: d */
    public volatile InterfaceC3618c f10723d;

    /* JADX INFO: renamed from: e */
    public int f10724e = 3;

    /* JADX INFO: renamed from: f */
    public int f10725f = 3;

    public C3617b(Object obj, InterfaceC3619d interfaceC3619d) {
        this.f10720a = obj;
        this.f10721b = interfaceC3619d;
    }

    @Override // p244y.InterfaceC3619d, p244y.InterfaceC3618c
    /* JADX INFO: renamed from: a */
    public final boolean mo5778a() {
        boolean z9;
        synchronized (this.f10720a) {
            try {
                z9 = this.f10722c.mo5778a() || this.f10723d.mo5778a();
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3619d
    /* JADX INFO: renamed from: b */
    public final void mo5779b(InterfaceC3618c interfaceC3618c) {
        synchronized (this.f10720a) {
            try {
                if (interfaceC3618c.equals(this.f10723d)) {
                    this.f10725f = 5;
                    InterfaceC3619d interfaceC3619d = this.f10721b;
                    if (interfaceC3619d != null) {
                        interfaceC3619d.mo5779b(this);
                    }
                    return;
                }
                this.f10724e = 5;
                if (this.f10725f != 1) {
                    this.f10725f = 1;
                    this.f10723d.mo5786i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p244y.InterfaceC3619d
    /* JADX INFO: renamed from: c */
    public final void mo5780c(InterfaceC3618c interfaceC3618c) {
        synchronized (this.f10720a) {
            try {
                if (interfaceC3618c.equals(this.f10722c)) {
                    this.f10724e = 4;
                } else if (interfaceC3618c.equals(this.f10723d)) {
                    this.f10725f = 4;
                }
                InterfaceC3619d interfaceC3619d = this.f10721b;
                if (interfaceC3619d != null) {
                    interfaceC3619d.mo5780c(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p244y.InterfaceC3618c
    public final void clear() {
        synchronized (this.f10720a) {
            try {
                this.f10724e = 3;
                this.f10722c.clear();
                if (this.f10725f != 3) {
                    this.f10725f = 3;
                    this.f10723d.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: d */
    public final void mo5781d() {
        synchronized (this.f10720a) {
            try {
                if (this.f10724e == 1) {
                    this.f10724e = 2;
                    this.f10722c.mo5781d();
                }
                if (this.f10725f == 1) {
                    this.f10725f = 2;
                    this.f10723d.mo5781d();
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
        synchronized (this.f10720a) {
            InterfaceC3619d interfaceC3619d = this.f10721b;
            z9 = interfaceC3619d == null || interfaceC3619d.mo5782e(this);
        }
        return z9;
    }

    @Override // p244y.InterfaceC3619d
    /* JADX INFO: renamed from: f */
    public final boolean mo5783f(InterfaceC3618c interfaceC3618c) {
        boolean z9;
        synchronized (this.f10720a) {
            InterfaceC3619d interfaceC3619d = this.f10721b;
            z9 = (interfaceC3619d == null || interfaceC3619d.mo5783f(this)) && interfaceC3618c.equals(this.f10722c);
        }
        return z9;
    }

    @Override // p244y.InterfaceC3619d
    /* JADX INFO: renamed from: g */
    public final boolean mo5784g(InterfaceC3618c interfaceC3618c) {
        boolean z9;
        boolean zEquals;
        int i10;
        synchronized (this.f10720a) {
            InterfaceC3619d interfaceC3619d = this.f10721b;
            z9 = false;
            if (interfaceC3619d == null || interfaceC3619d.mo5784g(this)) {
                if (this.f10724e != 5) {
                    zEquals = interfaceC3618c.equals(this.f10722c);
                } else {
                    zEquals = interfaceC3618c.equals(this.f10723d) && ((i10 = this.f10725f) == 4 || i10 == 5);
                }
                if (zEquals) {
                    z9 = true;
                }
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3619d
    public final InterfaceC3619d getRoot() {
        InterfaceC3619d root;
        synchronized (this.f10720a) {
            try {
                InterfaceC3619d interfaceC3619d = this.f10721b;
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
        synchronized (this.f10720a) {
            try {
                z9 = this.f10724e == 3 && this.f10725f == 3;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: i */
    public final void mo5786i() {
        synchronized (this.f10720a) {
            try {
                if (this.f10724e != 1) {
                    this.f10724e = 1;
                    this.f10722c.mo5786i();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p244y.InterfaceC3618c
    public final boolean isRunning() {
        boolean z9;
        synchronized (this.f10720a) {
            try {
                z9 = true;
                if (this.f10724e != 1 && this.f10725f != 1) {
                    z9 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: j */
    public final boolean mo5787j() {
        boolean z9;
        synchronized (this.f10720a) {
            try {
                z9 = this.f10724e == 4 || this.f10725f == 4;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z9;
    }

    @Override // p244y.InterfaceC3618c
    /* JADX INFO: renamed from: k */
    public final boolean mo5788k(InterfaceC3618c interfaceC3618c) {
        if (interfaceC3618c instanceof C3617b) {
            C3617b c3617b = (C3617b) interfaceC3618c;
            if (this.f10722c.mo5788k(c3617b.f10722c) && this.f10723d.mo5788k(c3617b.f10723d)) {
                return true;
            }
        }
        return false;
    }
}
