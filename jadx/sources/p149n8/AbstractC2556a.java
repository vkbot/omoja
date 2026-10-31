package p149n8;

import com.bumptech.glide.AbstractC1031d;
import p000a.AbstractC0000a;
import p054e8.InterfaceC1498a;
import p054e8.InterfaceC1501d;
import p150n9.InterfaceC2561b;
import p158o8.EnumC2757f;

/* JADX INFO: renamed from: n8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2556a implements InterfaceC1498a, InterfaceC1501d {

    /* JADX INFO: renamed from: b */
    public final InterfaceC1498a f7066b;

    /* JADX INFO: renamed from: c */
    public InterfaceC2561b f7067c;

    /* JADX INFO: renamed from: d */
    public InterfaceC1501d f7068d;

    /* JADX INFO: renamed from: e */
    public boolean f7069e;

    /* JADX INFO: renamed from: f */
    public int f7070f;

    public AbstractC2556a(InterfaceC1498a interfaceC1498a) {
        this.f7066b = interfaceC1498a;
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: a */
    public void mo2804a() {
        if (this.f7069e) {
            return;
        }
        this.f7069e = true;
        this.f7066b.mo2804a();
    }

    /* JADX INFO: renamed from: b */
    public final void m3996b(Throwable th) {
        AbstractC1031d.m1292v(th);
        this.f7067c.cancel();
        onError(th);
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        this.f7067c.cancel();
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        this.f7068d.clear();
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        this.f7067c.mo2811d(j10);
    }

    @Override // p242x7.InterfaceC3587d
    /* JADX INFO: renamed from: f */
    public final void mo2808f(InterfaceC2561b interfaceC2561b) {
        if (EnumC2757f.m4279e(this.f7067c, interfaceC2561b)) {
            this.f7067c = interfaceC2561b;
            if (interfaceC2561b instanceof InterfaceC1501d) {
                this.f7068d = (InterfaceC1501d) interfaceC2561b;
            }
            this.f7066b.mo2808f(this);
        }
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public int mo1220h(int i10) {
        InterfaceC1501d interfaceC1501d = this.f7068d;
        if (interfaceC1501d == null || (i10 & 4) != 0) {
            return 0;
        }
        int iMo1220h = interfaceC1501d.mo1220h(i10);
        if (iMo1220h == 0) {
            return iMo1220h;
        }
        this.f7070f = iMo1220h;
        return iMo1220h;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return this.f7068d.isEmpty();
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p242x7.InterfaceC3587d
    public void onError(Throwable th) {
        if (this.f7069e) {
            AbstractC0000a.m18s(th);
        } else {
            this.f7069e = true;
            this.f7066b.onError(th);
        }
    }
}
