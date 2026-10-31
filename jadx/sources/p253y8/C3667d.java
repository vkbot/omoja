package p253y8;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Ref;
import p099j1.C1929i;
import p263z8.AbstractC3764b;

/* JADX INFO: renamed from: y8.d */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: classes2.dex */
public final class C3667d implements InterfaceC3670g {

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ C3668e f10866b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ Ref.ObjectRef f10867c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ InterfaceC3670g f10868d;

    public C3667d(C3668e c3668e, Ref.ObjectRef objectRef, InterfaceC3670g interfaceC3670g) {
        this.f10866b = c3668e;
        this.f10867c = objectRef;
        this.f10868d = interfaceC3670g;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.Object] */
    @Override // p253y8.InterfaceC3670g
    public final Object emit(Object obj, Continuation continuation) {
        C3666c c3666c;
        if (continuation instanceof C3666c) {
            c3666c = (C3666c) continuation;
            int i10 = c3666c.f10865d;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c3666c.f10865d = i10 - Integer.MIN_VALUE;
            } else {
                c3666c = new C3666c(this, continuation);
            }
        } else {
            c3666c = new C3666c(this, continuation);
        }
        Object obj2 = c3666c.f10863b;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i11 = c3666c.f10865d;
        if (i11 == 0) {
            ResultKt.throwOnFailure(obj2);
            C3668e c3668e = this.f10866b;
            ?? Invoke = c3668e.f10870c.invoke(obj);
            Ref.ObjectRef objectRef = this.f10867c;
            T t = objectRef.element;
            if (t != AbstractC3764b.f11221b && ((Boolean) c3668e.f10871d.invoke(t, Invoke)).booleanValue()) {
                return Unit.INSTANCE;
            }
            objectRef.element = Invoke;
            c3666c.f10865d = 1;
            if (this.f10868d.emit(obj, c3666c) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i11 != 1) {
                C1929i.m3030l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.throwOnFailure(obj2);
        }
        return Unit.INSTANCE;
    }
}
