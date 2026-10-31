package p158o8;

import java.util.concurrent.atomic.AtomicInteger;
import p054e8.InterfaceC1501d;
import p242x7.InterfaceC3587d;

/* JADX INFO: renamed from: o8.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C2756e extends AtomicInteger implements InterfaceC1501d {

    /* JADX INFO: renamed from: b */
    public final Object f7922b;

    /* JADX INFO: renamed from: c */
    public final InterfaceC3587d f7923c;

    public C2756e(Object obj, InterfaceC3587d interfaceC3587d) {
        this.f7923c = interfaceC3587d;
        this.f7922b = obj;
    }

    @Override // p150n9.InterfaceC2561b
    public final void cancel() {
        lazySet(2);
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        lazySet(1);
    }

    @Override // p150n9.InterfaceC2561b
    /* JADX INFO: renamed from: d */
    public final void mo2811d(long j10) {
        if (EnumC2757f.m4278c(j10) && compareAndSet(0, 1)) {
            Object obj = this.f7922b;
            InterfaceC3587d interfaceC3587d = this.f7923c;
            interfaceC3587d.mo2807e(obj);
            if (get() != 2) {
                interfaceC3587d.mo2804a();
            }
        }
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        return 1;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return get() != 0;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        if (get() != 0) {
            return null;
        }
        lazySet(1);
        return this.f7922b;
    }
}
