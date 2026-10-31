package p149n8;

import p000a.AbstractC0000a;
import p054e8.InterfaceC1501d;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: n8.b */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2557b implements InterfaceC3587d, InterfaceC1501d {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3587d f7071b;

    /* JADX INFO: renamed from: c */
    public InterfaceC2561b f7072c;

    /* JADX INFO: renamed from: d */
    public InterfaceC1501d f7073d;

    /* JADX INFO: renamed from: e */
    public boolean f7074e;

    /* JADX INFO: renamed from: f */
    public int f7075f;

    public AbstractC2557b(InterfaceC3587d interfaceC3587d) {
        this.f7071b = interfaceC3587d;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public void mo2804a() {
        if (this.f7074e) {
            return;
        }
        this.f7074e = true;
        this.f7071b.mo2804a();
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        this.f7072c.cancel();
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        this.f7073d.clear();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        this.f7072c.mo2811d(j10);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f7072c, interfaceC2561b)) {
            this.f7072c = interfaceC2561b;
            if (interfaceC2561b instanceof InterfaceC1501d) {
                this.f7073d = (InterfaceC1501d) interfaceC2561b;
            }
            this.f7071b.mo2808f(this);
        }
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public int mo1220h(int i10) {
        InterfaceC1501d interfaceC1501d = this.f7073d;
        if (interfaceC1501d == null || (i10 & 4) != 0) {
            return 0;
        }
        int iMo1220h = interfaceC1501d.mo1220h(i10);
        if (iMo1220h == 0) {
            return iMo1220h;
        }
        this.f7075f = iMo1220h;
        return iMo1220h;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return this.f7073d.isEmpty();
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p242x7.InterfaceC3587d
    public void onError(Throwable th) {
        if (this.f7074e) {
            AbstractC0000a.m18s(th);
        } else {
            this.f7074e = true;
            this.f7071b.onError(th);
        }
    }
}
