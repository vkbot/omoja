package p095i8;

import java.util.concurrent.atomic.AtomicInteger;
import p000a.AbstractC0000a;
import p033c8.EnumC1011a;
import p054e8.InterfaceC1499b;
import p242x7.InterfaceC3589f;
import p242x7.InterfaceC3591h;
import p262z7.InterfaceC3762a;

/* JADX INFO: renamed from: i8.t */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1795t extends AtomicInteger implements InterfaceC3589f, InterfaceC1499b {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3591h f4708b;

    /* JADX INFO: renamed from: c */
    public Object f4709c;

    /* JADX INFO: renamed from: d */
    public InterfaceC3762a f4710d;

    public C1795t(InterfaceC3591h interfaceC3591h) {
        this.f4708b = interfaceC3591h;
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: a */
    public final void mo237a() {
        if ((get() & 54) != 0) {
            return;
        }
        lazySet(2);
        this.f4708b.mo2818a();
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: b */
    public final void mo238b(InterfaceC3762a interfaceC3762a) {
        if (EnumC1011a.m1219e(this.f4710d, interfaceC3762a)) {
            this.f4710d = interfaceC3762a;
            this.f4708b.mo2819b(this);
        }
    }

    @Override // p242x7.InterfaceC3589f
    /* JADX INFO: renamed from: c */
    public final void mo239c(Object obj) {
        int i10 = get();
        if ((i10 & 54) != 0) {
            return;
        }
        InterfaceC3591h interfaceC3591h = this.f4708b;
        if (i10 == 8) {
            this.f4709c = obj;
            lazySet(16);
            interfaceC3591h.mo2820e(null);
        } else {
            lazySet(2);
            interfaceC3591h.mo2820e(obj);
        }
        if (get() != 4) {
            interfaceC3591h.mo2818a();
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        lazySet(32);
        this.f4709c = null;
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        set(4);
        this.f4709c = null;
        this.f4710d.dispose();
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        lazySet(8);
        return 2;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // p242x7.InterfaceC3589f
    public final void onError(Throwable th) {
        if ((get() & 54) != 0) {
            AbstractC0000a.m18s(th);
        } else {
            lazySet(2);
            this.f4708b.onError(th);
        }
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        if (get() != 16) {
            return null;
        }
        Object obj = this.f4709c;
        this.f4709c = null;
        lazySet(32);
        return obj;
    }
}
