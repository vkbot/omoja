package p224v8;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import p253y8.C3678o;

/* JADX INFO: renamed from: v8.j0 */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3393j0 implements InterfaceC3400l1, Function1 {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ int f9889b;

    /* JADX INFO: renamed from: c */
    public final Object f9890c;

    public /* synthetic */ C3393j0(int i10, Object obj) {
        this.f9889b = i10;
        this.f9890c = obj;
    }

    /* JADX INFO: renamed from: a */
    public final void m5345a(Throwable th) {
        switch (this.f9889b) {
            case 0:
                ((C3678o) this.f9890c).dispose();
                break;
            default:
                ((Function1) this.f9890c).invoke(th);
                break;
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
        switch (this.f9889b) {
            case 0:
                m5345a((Throwable) obj);
                break;
            default:
                m5345a((Throwable) obj);
                break;
        }
        return Unit.INSTANCE;
    }

    public final String toString() {
        switch (this.f9889b) {
            case 0:
                return "DisposeOnCancel[" + ((C3678o) this.f9890c) + ']';
            default:
                return "InvokeOnCancel[" + ((Function1) this.f9890c).getClass().getSimpleName() + '@' + AbstractC3366a0.m5282a(this) + ']';
        }
    }
}
