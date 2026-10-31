package p045d8;

import java.util.concurrent.Callable;
import p023b8.InterfaceC0929c;
import p056f.C1519c;

/* JADX INFO: renamed from: d8.a */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class CallableC1313a implements Callable, InterfaceC0929c {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f3131b;

    /* JADX INFO: renamed from: c */
    public final Object f3132c;

    public /* synthetic */ CallableC1313a(int i10, Object obj) {
        this.f3131b = i10;
        this.f3132c = obj;
    }

    @Override // p023b8.InterfaceC0929c
    public Object apply(Object obj) {
        return this.f3132c;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f3131b) {
            case 0:
                return this.f3132c;
            default:
                synchronized (((C1519c) this.f3132c)) {
                    try {
                        C1519c c1519c = (C1519c) this.f3132c;
                        if (c1519c.f3726j == null) {
                            return null;
                        }
                        c1519c.m2598k0();
                        if (((C1519c) this.f3132c).m2593d0()) {
                            ((C1519c) this.f3132c).m2597i0();
                            ((C1519c) this.f3132c).f3728l = 0;
                        }
                        return null;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }
}
