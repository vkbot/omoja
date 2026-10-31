package p253y8;

import androidx.slidingpanelayout.widget.C0764x48a494f1;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import p263z8.AbstractC3764b;

/* JADX INFO: renamed from: y8.e */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3668e implements InterfaceC3669f {

    /* JADX INFO: renamed from: b */
    public final C0764x48a494f1 f10869b;

    /* JADX INFO: renamed from: c */
    public final Function1 f10870c;

    /* JADX INFO: renamed from: d */
    public final Function2 f10871d;

    public C3668e(C0764x48a494f1 c0764x48a494f1, Function1 function1, Function2 function2) {
        this.f10869b = c0764x48a494f1;
        this.f10870c = function1;
        this.f10871d = function2;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [T, a9.w] */
    @Override // p253y8.InterfaceC3669f
    public final Object collect(InterfaceC3670g interfaceC3670g, Continuation continuation) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = AbstractC3764b.f11221b;
        Object objCollect = collect(new C3667d(this, objectRef, interfaceC3670g), continuation);
        return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
    }
}
