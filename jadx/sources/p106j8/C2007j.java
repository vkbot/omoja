package p106j8;

import com.bumptech.glide.AbstractC1031d;
import p000a.AbstractC0000a;
import p033c8.EnumC1011a;
import p045d8.AbstractC1314b;
import p047e0.C1357g;
import p054e8.InterfaceC1499b;
import p242x7.InterfaceC3591h;
import p250y5.C3646a;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: j8.j */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2007j implements InterfaceC3591h, InterfaceC1499b {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3591h f5483b;

    /* JADX INFO: renamed from: c */
    public InterfaceC3762a f5484c;

    /* JADX INFO: renamed from: d */
    public InterfaceC1499b f5485d;

    /* JADX INFO: renamed from: e */
    public boolean f5486e;

    public C2007j(InterfaceC3591h interfaceC3591h, C1357g c1357g) {
        this.f5483b = interfaceC3591h;
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: a */
    public final void mo2818a() {
        if (this.f5486e) {
            return;
        }
        this.f5486e = true;
        this.f5483b.mo2818a();
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: b */
    public final void mo2819b(InterfaceC3762a interfaceC3762a) {
        if (EnumC1011a.m1219e(this.f5484c, interfaceC3762a)) {
            this.f5484c = interfaceC3762a;
            if (interfaceC3762a instanceof InterfaceC1499b) {
                this.f5485d = (InterfaceC1499b) interfaceC3762a;
            }
            this.f5483b.mo2819b(this);
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        this.f5485d.clear();
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        this.f5484c.dispose();
    }

    @Override // p242x7.InterfaceC3591h
    /* JADX INFO: renamed from: e */
    public final void mo2820e(Object obj) {
        if (this.f5486e) {
            return;
        }
        try {
            String strM5833n = ((C3646a) obj).m5833n();
            AbstractC1314b.m2356a(strM5833n, "The mapper function returned a null value.");
            this.f5483b.mo2820e(strM5833n);
        } catch (Throwable th) {
            AbstractC1031d.m1292v(th);
            this.f5484c.dispose();
            onError(th);
        }
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        return 0;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return this.f5485d.isEmpty();
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p242x7.InterfaceC3591h
    public final void onError(Throwable th) {
        if (this.f5486e) {
            AbstractC0000a.m18s(th);
        } else {
            this.f5486e = true;
            this.f5483b.onError(th);
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        Object objPoll = this.f5485d.poll();
        if (objPoll == null) {
            return null;
        }
        String strM5833n = ((C3646a) objPoll).m5833n();
        AbstractC1314b.m2356a(strM5833n, "The mapper function returned a null value.");
        return strM5833n;
    }
}
