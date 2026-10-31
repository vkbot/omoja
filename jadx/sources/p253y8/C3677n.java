package p253y8;

import kotlin.coroutines.Continuation;

/* JADX INFO: renamed from: y8.n */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3677n implements InterfaceC3683t, InterfaceC3669f {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ InterfaceC3676m f10882b;

    public C3677n(InterfaceC3676m interfaceC3676m) {
        this.f10882b = interfaceC3676m;
    }

    @Override // p253y8.InterfaceC3669f
    public final Object collect(InterfaceC3670g interfaceC3670g, Continuation continuation) {
        return ((C3685v) this.f10882b).collect(interfaceC3670g, continuation);
    }

    @Override // p253y8.InterfaceC3683t
    public final Object getValue() {
        return ((C3685v) this.f10882b).getValue();
    }
}
