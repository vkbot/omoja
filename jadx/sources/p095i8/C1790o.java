package p095i8;

import p033c8.EnumC1012b;
import p054e8.InterfaceCallableC1502e;
import p242x7.AbstractC3588e;
import p242x7.InterfaceC3589f;

/* JADX INFO: renamed from: i8.o */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes.dex */
public final class C1790o extends AbstractC3588e implements InterfaceCallableC1502e {

    /* JADX INFO: renamed from: b */
    public final Object f4697b;

    public C1790o(Object obj) {
        this.f4697b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.f4697b;
    }

    @Override // p242x7.AbstractC3588e
    /* JADX INFO: renamed from: d */
    public final void mo2841d(InterfaceC3589f interfaceC3589f) {
        interfaceC3589f.mo238b(EnumC1012b.f1015b);
        interfaceC3589f.mo239c(this.f4697b);
    }
}
