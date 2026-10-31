package p158o8;

import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: o8.c */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2754c extends AbstractC2752a {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f7918b;

    /* JADX INFO: renamed from: c */
    public Object f7919c;

    public AbstractC2754c(InterfaceC3587d interfaceC3587d) {
        this.f7918b = interfaceC3587d;
    }

    /* JADX INFO: renamed from: c */
    public void m4272c(Object obj) {
        m4273i(obj);
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        lazySet(32);
        this.f7919c = null;
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        Object obj;
        if (EnumC2757f.m4278c(j10)) {
            do {
                int i10 = get();
                if ((i10 & (-2)) != 0) {
                    return;
                }
                if (i10 == 1) {
                    if (!compareAndSet(1, 3) || (obj = this.f7919c) == null) {
                        return;
                    }
                    this.f7919c = null;
                    InterfaceC3587d interfaceC3587d = this.f7918b;
                    interfaceC3587d.mo2807e(obj);
                    if (get() != 4) {
                        interfaceC3587d.mo2804a();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        lazySet(8);
        return 2;
    }

    /* JADX INFO: renamed from: i */
    public final void m4273i(Object obj) {
        int i10 = get();
        do {
            InterfaceC3587d interfaceC3587d = this.f7918b;
            if (i10 == 8) {
                this.f7919c = obj;
                lazySet(16);
                interfaceC3587d.mo2807e(obj);
                if (get() != 4) {
                    interfaceC3587d.mo2804a();
                    return;
                }
                return;
            }
            if ((i10 & (-3)) != 0) {
                return;
            }
            if (i10 == 2) {
                lazySet(3);
                interfaceC3587d.mo2807e(obj);
                if (get() != 4) {
                    interfaceC3587d.mo2804a();
                    return;
                }
                return;
            }
            this.f7919c = obj;
            if (compareAndSet(0, 1)) {
                return;
            } else {
                i10 = get();
            }
        } while (i10 != 4);
        this.f7919c = null;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        if (get() != 16) {
            return null;
        }
        lazySet(32);
        Object obj = this.f7919c;
        this.f7919c = null;
        return obj;
    }
}
