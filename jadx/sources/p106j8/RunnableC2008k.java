package p106j8;

import java.util.concurrent.atomic.AtomicInteger;
import p054e8.InterfaceC1499b;
import p242x7.InterfaceC3591h;

/* JADX INFO: renamed from: j8.k */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC2008k extends AtomicInteger implements InterfaceC1499b, Runnable {

    /* JADX INFO: renamed from: b */
    public final InterfaceC3591h f5487b;

    /* JADX INFO: renamed from: c */
    public final Object f5488c;

    public RunnableC2008k(InterfaceC3591h interfaceC3591h, Object obj) {
        this.f5487b = interfaceC3591h;
        this.f5488c = obj;
    }

    @Override // p054e8.InterfaceC1504g
    public final void clear() {
        lazySet(3);
    }

    @Override // p262z7.InterfaceC3762a
    public final void dispose() {
        set(3);
    }

    @Override // p054e8.InterfaceC1500c
    /* JADX INFO: renamed from: h */
    public final int mo1220h(int i10) {
        lazySet(1);
        return 1;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean isEmpty() {
        return get() != 1;
    }

    @Override // p054e8.InterfaceC1504g
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // p054e8.InterfaceC1504g
    public final Object poll() {
        if (get() != 1) {
            return null;
        }
        lazySet(3);
        return this.f5488c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (get() == 0 && compareAndSet(0, 2)) {
            Object obj = this.f5488c;
            InterfaceC3591h interfaceC3591h = this.f5487b;
            interfaceC3591h.mo2820e(obj);
            if (get() == 2) {
                lazySet(3);
                interfaceC3591h.mo2818a();
            }
        }
    }
}
